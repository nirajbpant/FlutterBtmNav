import 'package:fitness_user/data/get_notices/datastore/models/get_notices_response.dart';

abstract class IGetNoticesDataStore {
  Future<GetNoticesResponse> getNotices();
}
