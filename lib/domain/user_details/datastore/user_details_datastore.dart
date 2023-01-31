import '../../../data/user_details/datastore/models/user_details.dart';
import '../../../data/user_details/datastore/models/user_profile_response.dart';

abstract class IUserDetailsDataStore {
  Future<UserProfileResponse> getUserDetails();
  Future<void> setUserDetails(UserDetails userDetails);
  Future<void> saveUserDetails(UserDetails userDetails);
}
