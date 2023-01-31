import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fitness_user/core/logger/log.dart';
import 'package:fitness_user/data/register/datastore/model/register_request.dart';
import 'package:injectable/injectable.dart';

import 'datastore/model/register_response.dart';

@injectable
class RegisterApiService {
  final Dio dio;

  RegisterApiService(this.dio);

  Future<RegisterReponse> register(RegisterRequest request) async {
    final response = await dio.post(
      '/api/v1/user/registerMember',
      data: request.toJson(),
    );
    Log.d("This is the data ${response.data}");
    final value = RegisterReponse.fromJson(response.data);
    return value;
  }
}
