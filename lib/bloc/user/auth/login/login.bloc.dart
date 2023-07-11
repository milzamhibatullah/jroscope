import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.event.dart';
part 'login.state.dart';
part 'login.bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<LoginEvent>((event, emit) {
      event.when(
        started: () => emit(const LoginState.initial()),
        emailChange: (String inputEmail) {
          state.maybeWhen(
              (visibilty, password, email) => emit(
                    LoginState(
                      visibilty: visibilty,
                      password: password,
                      email: inputEmail,
                    ),
                  ),
              orElse: () {});
        },
        passwordChange: (String inputPassword) {
          state.maybeWhen(
              (visibilty, password, email) => emit(
                    LoginState(
                      visibilty: visibilty,
                      password: inputPassword,
                      email: email,
                    ),
                  ),
              orElse: () {});
        },
        passwordVisibility: () {
          state.maybeWhen((visibilty, password, email) {
            if (visibilty) {
              emit(
                LoginState(
                  visibilty: false,
                  password: password,
                  email: email,
                ),
              );
            } else {
              emit(
                LoginState(
                  visibilty: true,
                  password: password,
                  email: email,
                ),
              );
            }
          }, orElse: () {});
        },
        logout: () {},
        login: () {},
      );
    });
  }
}
