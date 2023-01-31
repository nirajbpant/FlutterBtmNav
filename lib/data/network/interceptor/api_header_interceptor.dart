import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../../core/logger/log.dart';
import '../../../domain/exception/connection_exception.dart';
import '../../../domain/session/repository/session_repository.dart';
import '../../../injectable/injection.dart';
import '../models/access_token_base_response.dart';

@injectable
class ApiHeadersInterceptor extends Interceptor {
  ApiHeadersInterceptor();

  ISessionRepository get _sessionRepository => getIt<ISessionRepository>();

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _sessionRepository.accessToken;
    if (token != null) {
      final bool isTokenExpired = JwtDecoder.isExpired(token);
      if (isTokenExpired) {
        final String refreshUrl = options.baseUrl + "api/v1/token/refresh";
        final refreshToken = await _sessionRepository.refreshToken;
        try {
          final response = await http.post(Uri.parse(refreshUrl),
              headers: {"REFRESH-TOKEN": refreshToken!});
          Log.d("API Refresh response ${response.body}");
          final result =
              AccessTokenBaseResponse.fromJson(jsonDecode(response.body));
          //Todo check result empty here
          if (result.payload != null) {
            _sessionRepository
                .setNewAccessToken(result.payload!.data!.accessToken);
            _sessionRepository
                .setNewRefreshToken(result.payload!.data!.refreshtoken);
            Log.d("New access token ${result.payload!.data!.accessToken}");
            Log.d("New refresh token ${result.payload!.data!.refreshtoken}");
          } else {
            _sessionRepository.logout();
          }
        } on ConnectionException catch (_) {
          _sessionRepository.logout();
        } on Exception catch (_) {
          _sessionRepository.logout();
        }
      }
      Log.d("Is token expired $isTokenExpired");
    }
    Log.e("Setting token $token");
    await _addAccessToken(options);

    super.onRequest(options, handler);
  }

  Future _addAccessToken(RequestOptions options) async {
    final token = await _sessionRepository.accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers.addAll({"ACCESS-TOKEN": token});
    }
  }
}
