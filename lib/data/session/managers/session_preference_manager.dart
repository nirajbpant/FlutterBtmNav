import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SessionPreferenceManager {
  final SharedPreferences sharedPreferences;

  SessionPreferenceManager(this.sharedPreferences);

  String? get accessToken => sharedPreferences.getString(accessKey);
  set accessToken(String? accessToken) =>
      sharedPreferences.setString(accessKey, accessToken ?? "");

  String? get refreshToken => sharedPreferences.getString(refreshKey);
  set refreshToken(String? refreshToken) =>
      sharedPreferences.setString(refreshKey, refreshToken ?? "");

  String? get userId => sharedPreferences.getString(userIdKey);
  set userId(String? userId) =>
      sharedPreferences.setString(userIdKey, userId ?? "");

  bool get isUserProfileEmpty =>
      sharedPreferences.getBool(hasUserProfileSetup) ?? false;

  set isUserProfileEmpty(bool isProfileSetup) =>
      sharedPreferences.setBool(hasUserProfileSetup, isProfileSetup);

  bool get hasJoinedGym => sharedPreferences.getBool(hasJoinedGymKey) ?? false;

  set hasJoinedGym(bool hasJoined) =>
      sharedPreferences.setBool(hasJoinedGymKey, hasJoined);

  void clearData() {
    sharedPreferences.remove(accessKey);
    sharedPreferences.remove(userIdKey);
    sharedPreferences.remove(hasUserProfileSetup);
    sharedPreferences.remove(hasJoinedGymKey);
  }
}

const String accessKey = "key:session:accessToken";
const String userIdKey = "key:session:user_id";
const String refreshKey = "key:session:refreshToken";
const String hasUserProfileSetup = "key:session:hasUserProfileSetup";
const String hasJoinedGymKey = "key:session:hasJoinedGym";
