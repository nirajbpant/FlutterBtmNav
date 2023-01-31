import 'package:injectable/injectable.dart';

import '../../../domain/exception/dio_exception_extension.dart';
import '../../../domain/join_gym/datastore/join_gym_datastore.dart';
import '../join_gym_api_service.dart';
import 'models/join_gym_response.dart';

@LazySingleton(as: JoinGymDataStore)
class JoinGymDataStoreImpl extends JoinGymDataStore {
  final JoinGymApiService apiService;

  JoinGymDataStoreImpl(this.apiService);
  @override
  Future<JoinGymResponse> joinGym({required String gymId}) {
    return apiService.joinGym(gymId: gymId).catchDioException();
  }
}
