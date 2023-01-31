import 'package:bloc/bloc.dart';
import 'package:fitness_user/domain/register/repository/register_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IRegisterRepository repository;

  RegisterBloc(this.repository) : super(const _Initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.when(
        register: (email, password) => _onRegister(emit, email, password),
      );
    });
  }
  Future<void> _onRegister(
    Emitter<RegisterState> emit,
    String email,
    String password,
  ) async {
    emit(const RegisterState.loading());
    final result = await repository.register(email, password);

    result.fold(
      (exception) {
        emit(RegisterState.error(message: exception.toString()));
      },
      (_) => emit(const RegisterState.success()),
    );
  }
}
