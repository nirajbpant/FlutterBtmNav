import 'package:bloc/bloc.dart';
import 'package:fitness_user/data/get_notices/datastore/models/gym_notice.dart';
import 'package:fitness_user/domain/exception/qunto_exceptions.dart';
import 'package:fitness_user/domain/get_notices/repository/get_notices_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_notices_event.dart';
part 'get_notices_state.dart';
part 'get_notices_bloc.freezed.dart';

@injectable
class GetNoticesBloc extends Bloc<GetNoticesEvent, GetNoticesState> {
  final IGetNoticesRepository getNoticesRepository;
  GetNoticesBloc(this.getNoticesRepository) : super(const _Initial()) {
    on<GetNoticesEvent>((event, emit) async {
      await event.when(getNotices: () async {
        emit(const GetNoticesState.loading());
        final result = await getNoticesRepository.getNotices();
        result.fold((exception) {
          final errorMsg = QuntoExceptions.getErrorMessage(exception);
          if (exception == const QuntoExceptions.detailsNotFound()) {
            emit(const GetNoticesState.failure(
                errorMsg: "Couldn't get notices at the moment"));
          } else if (exception == const QuntoExceptions.noConnection()) {
            emit(GetNoticesState.failure(errorMsg: errorMsg));
          }
        }, (data) {
          emit(GetNoticesState.success(notices: data.payload!.data));
        });
      });
    });
  }
}
