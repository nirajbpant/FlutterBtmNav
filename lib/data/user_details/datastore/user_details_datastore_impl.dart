import 'package:injectable/injectable.dart';

import '../../../domain/exception/dio_exception_extension.dart';
import '../../../domain/user_details/datastore/user_details_datastore.dart';
import '../user_details_api.dart';
import 'models/user_details.dart';
import 'models/user_profile_response.dart';

@LazySingleton(as: IUserDetailsDataStore)
class UserDetailsDataStoreImpl extends IUserDetailsDataStore {
  final UserDetailsApiService userDetailsApiService;

  UserDetailsDataStoreImpl(this.userDetailsApiService);

  @override
  Future<UserProfileResponse> getUserDetails() {
    return userDetailsApiService.getUserDetails().catchDioException();
  }

  @override
  Future<void> setUserDetails(UserDetails userDetails) async {
    userDetailsApiService.setUserDetails(userDetails);
  }

  @override
  Future<void> saveUserDetails(UserDetails userDetails) async {
    userDetailsApiService.saveUserDetails(userDetails);
  }
}
