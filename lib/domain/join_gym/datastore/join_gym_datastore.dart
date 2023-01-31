import '../../../data/join_gym/datastore/models/join_gym_response.dart';

abstract class JoinGymDataStore {
  Future<JoinGymResponse> joinGym({required String gymId});
}
