import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'datastore/models/join_gym_response.dart';

@injectable
class JoinGymApiService {
  final Dio dio;

  JoinGymApiService(this.dio);

  Future<JoinGymResponse> joinGym({required String gymId}) async {
    final result =
        await dio.post('/api/v1/gym/joinGym', data: {"gymId": gymId});
    final value = JoinGymResponse.fromJson(result.data);
    return value;
  }
}
