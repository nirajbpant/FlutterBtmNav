import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'datastore/models/user_details.dart';
import 'datastore/models/user_profile_response.dart';

@injectable
class UserDetailsApiService {
  final Dio dio;

  UserDetailsApiService(this.dio);

  Future<void> setUserDetails(UserDetails userDetails) async {
    await dio.post(
      '/api/v1/app/updateUserDetails',
      data: userDetails.toJson(),
    );
  }

  Future<UserProfileResponse> getUserDetails() async {
    final response = await dio.get(
      '/api/v1/app/getUserDetails',
    );
    final value = UserProfileResponse.fromJson(response.data);
    return value;
  }

  Future<void> saveUserDetails(UserDetails userDetails) async {
    await dio.post(
      '/api/v1/app/saveUserDetails',
      data: userDetails.toJson(),
    );
  }
}
