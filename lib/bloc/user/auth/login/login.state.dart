part of 'login.bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {@Default(false) bool visibilty,
      @Default('') String password,
      @Default('') String email,
      @Default(false) bool isLoading,
      @Default(false) bool isFailed,
      @Default(false) bool isSuccess}) = _LoginState;
}
