part of 'login.bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.failed() = _Failed;
  const factory LoginState({
    @Default(false) bool visibilty,
    @Default('') String password,
    @Default('') String email,
  }) = _LoginState;
}
