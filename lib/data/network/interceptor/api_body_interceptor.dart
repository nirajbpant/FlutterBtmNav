import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiBodyInceptor extends Interceptor {
  ApiBodyInceptor();

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final data = response.data['data'];
    if (data != null) {
      handler.resolve(
        Response(
          requestOptions: response.requestOptions,
          data: data,
          headers: response.headers,
          extra: response.extra,
          redirects: response.redirects,
          isRedirect: response.isRedirect,
          statusCode: response.statusCode,
          statusMessage: response.statusMessage,
        ),
      );
      return;
    }
    super.onResponse(response, handler);
  }
}
