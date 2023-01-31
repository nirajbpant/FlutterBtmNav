import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/get_gym_details/datastore/models/gym_details.dart';
import '../../domain/exception/qunto_exceptions.dart';
import '../../domain/get_gym_details/repository/get_gym_details_repository.dart';

part 'get_gym_details_bloc.freezed.dart';
part 'get_gym_details_event.dart';
part 'get_gym_details_state.dart';

@injectable
class GetGymDetailsBloc extends Bloc<GetGymDetailsEvent, GetGymDetailsState> {
  final GetGymDetailsRepository getGymDetailsRepository;
  GetGymDetailsBloc(this.getGymDetailsRepository) : super(const _Initial()) {
    on<GetGymDetailsEvent>((event, emit) async {
      await event.when(getGymDetails: (gymId) async {
        emit(const GetGymDetailsState.loading());
        final result =
            await getGymDetailsRepository.getGymDetails(gymId: gymId);
        result.fold((exception) {
          final errorMsg = QuntoExceptions.getErrorMessage(exception);
          if (exception == const QuntoExceptions.detailsNotFound()) {
            emit(const GetGymDetailsState.failure(errorMsg: "No Gym Found"));
          } else if (exception == const QuntoExceptions.noConnection()) {
            emit(GetGymDetailsState.failure(errorMsg: errorMsg));
          }
        }, (gymDetails) {
          emit(
              GetGymDetailsState.success(gymDetails: gymDetails.payload!.data));
        });
      });
    });
  }
}
