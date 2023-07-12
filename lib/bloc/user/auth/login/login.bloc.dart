import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jroscope/service/user/user.service.dart';

part 'login.event.dart';

part 'login.state.dart';

part 'login.bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final userService = UserService();
  LoginBloc() : super(const LoginState()) {
    ///change visibility of password
    on<_PasswordVisibility>((event, emit) {
      emit(LoginState(
          visibilty: state.visibilty ? false : true,
          email: state.email,
          password: state.password));
    });

    on<_EmailChange>((event, emit) {
      emit(LoginState(
          visibilty: state.visibilty,
          email: event.email,
          password: state.password));
    });

    on<_PasswordChange>((event, emit) {
      emit(
        LoginState(
          visibilty: state.visibilty,
          email: state.email,
          password: event.password,
        ),
      );
    });

    on<_Login>((event, emit) async {
      emit(
        LoginState(
          visibilty: state.visibilty,
          email: state.email,
          password: event.password,
          isLoading: true,
        ),
      );

      final success = await userService.login(state.email, state.password);
      if (success) {
        emit(LoginState(
            email: '',
            password: '',
            visibilty: state.visibilty,
            isLoading: false,
            isSuccess: true));
      } else {
        emit(
          LoginState(
            visibilty: state.visibilty,
            email: state.email,
            password: event.password,
            isLoading: false,
          ),
        );
      }
    });
  }

  @override
  void onChange(Change<LoginState> change) {
    print('state : $change');
    super.onChange(change);
  }
}
