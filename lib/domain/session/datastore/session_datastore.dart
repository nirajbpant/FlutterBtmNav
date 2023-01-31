import 'package:fitness_user/data/session/datastore/models/login_response.dart';

abstract class ISessionDataStore {
  Future<LoginResponse> login(String email, String password);

  Future<void> logout();
}
