import 'package:injectable/injectable.dart';

import '../../../domain/exception/dio_exception_extension.dart';
import '../../../domain/session/datastore/session_datastore.dart';
import '../session_api.dart';
import 'models/login_request.dart';
import 'models/login_response.dart';

@LazySingleton(as: ISessionDataStore)
class SessionDataStoreImpl extends ISessionDataStore {
  final SessionApiService sessionApi;

  SessionDataStoreImpl(this.sessionApi);

  @override
  Future<LoginResponse> login(String email, String password) {
    return sessionApi
        .login(
          LoginRequest(username: email, password: password),
        )
        .catchDioException();
  }

  @override
  Future<void> logout() async {}
}
