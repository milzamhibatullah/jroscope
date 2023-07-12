part of 'register.bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.emailChange(inputEmail) = _EmailChange;
  const factory RegisterEvent.userNameChange(inputUsename) = _UserNameChange;
  const factory RegisterEvent.passwordChange(inputPassword) = _PasswordChange;
  const factory RegisterEvent.confirmPasswordChange(inputConfirmPassword) =
      _ConfirmPasswordChange;
  const factory RegisterEvent.passwordSecured() = _PasswordSecured;
  const factory RegisterEvent.confirmPasswordSecure() = _ConfirmPasswordSecured;
  const factory RegisterEvent.register() = _Register;
}
