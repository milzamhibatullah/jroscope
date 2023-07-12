part of 'register.bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String email,
    @Default('') String username,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(true) bool passwordSecured,
    @Default(true) bool confirmPasswordSecured,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isFailed,
  }) = _RegisterState;
}
