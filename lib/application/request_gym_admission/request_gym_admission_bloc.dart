import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exception/qunto_exceptions.dart';
import '../../domain/join_gym/repository/join_gym_repository.dart';

part 'request_gym_admission_bloc.freezed.dart';
part 'request_gym_admission_event.dart';
part 'request_gym_admission_state.dart';

@injectable
class RequestGymAdmissionBloc
    extends Bloc<RequestGymAdmissionEvent, RequestGymAdmissionState> {
  final JoinGymRepository joinGymRepository;
  RequestGymAdmissionBloc(this.joinGymRepository) : super(const _Initial()) {
    on<RequestGymAdmissionEvent>((event, emit) async {
      await event.when(requestGymAdmission: (gymId) async {
        emit(const RequestGymAdmissionState.loading());
        final result = await joinGymRepository.joinGym(gymId: gymId);
        result.fold((exception) {
          final errorMsg = QuntoExceptions.getErrorMessage(exception);
          if (exception == const QuntoExceptions.detailsNotFound()) {
            emit(const RequestGymAdmissionState.failure(
                errorMsg:
                    "You have already request to join gym, please be patience as your request is being reviewed."));
          } else if (exception == const QuntoExceptions.noConnection()) {
            emit(RequestGymAdmissionState.failure(errorMsg: errorMsg));
          }
        }, (data) {
          emit(RequestGymAdmissionState.success(
              admissionInfo: data.messages![0].shortMessage));
        });
      });
    });
  }
}
