import '../../../data/register/datastore/model/register_response.dart';

abstract class IRegisterDataStore {
  Future<RegisterReponse> register(String email, String password);
}
