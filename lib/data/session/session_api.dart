import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fitness_user/core/logger/log.dart';
import 'package:injectable/injectable.dart';

import 'datastore/models/login_request.dart';
import 'datastore/models/login_response.dart';

@injectable
class SessionApiService {
  final Dio dio;

  SessionApiService(this.dio);

  Future<LoginResponse> login(LoginRequest request) async {
    final map = request.toJson();
    FormData formData = FormData.fromMap(map);
    final response = await dio.post(
      '/api/v1/login',
      data: formData,
    );

    Log.d("Response from API ${response.toString()}");
    final value = LoginResponse.fromJson(response.data);
    return value;
  }
}
