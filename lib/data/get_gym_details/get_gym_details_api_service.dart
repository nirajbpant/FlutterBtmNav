import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/logger/log.dart';
import 'datastore/models/get_gym_details_response.dart';

@injectable
class GetGymDetailsApiService {
  final Dio dio;

  GetGymDetailsApiService(this.dio);

  Future<GetGymDetailsResponse> getGymDetails({required String gymId}) async {
    final result = await dio.get('/api/v1/gym/$gymId');
    Log.d(result.toString());
    final value = GetGymDetailsResponse.fromJson(result.data);
    return value;
  }
}
