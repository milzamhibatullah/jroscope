import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jroscope/service/user/user.service.dart';

part 'register.event.dart';
part 'register.state.dart';
part 'register.bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final _service = UserService();
  RegisterBloc() : super(const _RegisterState()) {
    ///event change email
    on<_EmailChange>(
      (event, emit) => emit(
        state.copyWith(email: event.inputEmail),
      ),
    );

    ///event to change username
    on<_UserNameChange>(
      (event, emit) => emit(
        state.copyWith(username: event.inputUsename),
      ),
    );

    ///event to change password
    on<_PasswordChange>(
      (event, emit) => emit(
        state.copyWith(password: event.inputPassword),
      ),
    );

    /// event to change confirm password
    on<_ConfirmPasswordChange>(
      (event, emit) => emit(
        state.copyWith(confirmPassword: event.inputConfirmPassword),
      ),
    );

    /// event to change visibility password
    on<_PasswordSecured>(
      (event, emit) => emit(
        state.copyWith(passwordSecured: state.passwordSecured ? false : true),
      ),
    );

    ///event to change visibility confirm password
    on<_ConfirmPasswordSecured>(
      (event, emit) => emit(
        state.copyWith(
            confirmPasswordSecured:
                state.confirmPasswordSecured ? false : true),
      ),
    );

    ///event to register
    on<_Register>(
      (event, emit) async {
        ///emit to loading
        emit(
          state.copyWith(isLoading: true),
        );

        ///encoded data
        final data = jsonEncode({
          'email': state.email,
          'username': state.username,
          'password': state.password
        });
        final successRegister = await _service.register(data);
        if (successRegister) {
          emit(
            state.copyWith(isLoading: false, isSuccess: true),
          );
        } else {
          emit(
            state.copyWith(isLoading: false, isFailed: true),
          );
        }
      },
    );
  }
}
