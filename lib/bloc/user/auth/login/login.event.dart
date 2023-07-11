part of 'login.bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.emailChange(String email) = _EmailChange;
  const factory LoginEvent.passwordChange(String password) = _PasswordChange;
  const factory LoginEvent.passwordVisibility() = _PasswordVisibility;
  const factory LoginEvent.logout() = _Logout;
  const factory LoginEvent.login() = _Login;
}
