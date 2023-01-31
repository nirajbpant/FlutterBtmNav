import 'package:fitness_user/data/get_gym_details/datastore/models/get_gym_details_response.dart';
import 'package:fitness_user/data/get_gym_details/get_gym_details_api_service.dart';
import 'package:fitness_user/domain/exception/dio_exception_extension.dart';
import 'package:fitness_user/domain/get_gym_details/datastore/get_gym_details_datastore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetGymDetailsDataStore)
class GetGymDetailsDataStoreImpl extends GetGymDetailsDataStore {
  final GetGymDetailsApiService apiService;

  GetGymDetailsDataStoreImpl(this.apiService);
  @override
  Future<GetGymDetailsResponse> getGymDetails({required String gymId}) {
    return apiService.getGymDetails(gymId: gymId).catchDioException();
  }
}
