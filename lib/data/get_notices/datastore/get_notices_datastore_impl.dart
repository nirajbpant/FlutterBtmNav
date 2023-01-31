import 'package:fitness_user/data/get_notices/datastore/models/get_notices_response.dart';
import 'package:fitness_user/data/get_notices/get_notices_api_service.dart';
import 'package:fitness_user/domain/exception/dio_exception_extension.dart';
import 'package:fitness_user/domain/get_notices/datastore/get_notices_datastore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGetNoticesDataStore)
class GetNoticesDataStoreImpl extends IGetNoticesDataStore {
  final GetNoticesApiService apiService;

  GetNoticesDataStoreImpl(this.apiService);
  @override
  Future<GetNoticesResponse> getNotices() {
    return apiService.getNotices().catchDioException();
  }
}
