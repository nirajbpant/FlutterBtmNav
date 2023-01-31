import 'package:fitness_user/data/register/datastore/model/register_request.dart';
import 'package:fitness_user/data/register/register_api.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/register/datastore/register_datastore.dart';
import 'model/register_response.dart';

@LazySingleton(as: IRegisterDataStore)
class RegisterDataStoreImpl extends IRegisterDataStore {
  final RegisterApiService registerApiService;

  RegisterDataStoreImpl(this.registerApiService);

  @override
  Future<RegisterReponse> register(String email, String password) async {
    final response = await registerApiService.register(
      RegisterRequest(email: email, password: password),
    );
    return response;
  }
}
