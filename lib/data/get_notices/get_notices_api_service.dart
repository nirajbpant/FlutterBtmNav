import 'package:dio/dio.dart';
import 'package:fitness_user/data/get_notices/datastore/models/get_notices_response.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNoticesApiService {
  final Dio dio;

  GetNoticesApiService(this.dio);

  Future<GetNoticesResponse> getNotices() async {
    final response = await dio.get('api/v1/gym/getNotices');
    final value = GetNoticesResponse.fromJson(response.data);
    return value;
  }
}
