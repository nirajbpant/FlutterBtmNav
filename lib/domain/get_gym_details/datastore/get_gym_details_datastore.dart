import 'package:fitness_user/data/get_gym_details/datastore/models/get_gym_details_response.dart';

abstract class GetGymDetailsDataStore {
  Future<GetGymDetailsResponse> getGymDetails({required String gymId});
}
