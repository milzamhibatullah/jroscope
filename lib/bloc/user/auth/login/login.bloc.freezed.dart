// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() passwordVisibility,
    required TResult Function() logout,
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? passwordVisibility,
    TResult? Function()? logout,
    TResult? Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? passwordVisibility,
    TResult Function()? logout,
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_PasswordVisibility value) passwordVisibility,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChange value)? emailChange,
    TResult? Function(_PasswordChange value)? passwordChange,
    TResult? Function(_PasswordVisibility value)? passwordVisibility,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_PasswordVisibility value)? passwordVisibility,
    TResult Function(_Logout value)? logout,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() passwordVisibility,
    required TResult Function() logout,
    required TResult Function() login,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? passwordVisibility,
    TResult? Function()? logout,
    TResult? Function()? login,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? passwordVisibility,
    TResult Function()? logout,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_PasswordVisibility value) passwordVisibility,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Login value) login,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChange value)? emailChange,
    TResult? Function(_PasswordChange value)? passwordChange,
    TResult? Function(_PasswordVisibility value)? passwordVisibility,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Login value)? login,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_PasswordVisibility value)? passwordVisibility,
    TResult Function(_Logout value)? logout,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_EmailChangeCopyWith<$Res> {
  factory _$$_EmailChangeCopyWith(
          _$_EmailChange value, $Res Function(_$_EmailChange) then) =
      __$$_EmailChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_EmailChange>
    implements _$$_EmailChangeCopyWith<$Res> {
  __$$_EmailChangeCopyWithImpl(
      _$_EmailChange _value, $Res Function(_$_EmailChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChange(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChange implements _EmailChange {
  const _$_EmailChange(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.emailChange(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChange &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangeCopyWith<_$_EmailChange> get copyWith =>
      __$$_EmailChangeCopyWithImpl<_$_EmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() passwordVisibility,
    required TResult Function() logout,
    required TResult Function() login,
  }) {
    return emailChange(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? passwordVisibility,
    TResult? Function()? logout,
    TResult? Function()? login,
  }) {
    return emailChange?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? passwordVisibility,
    TResult Function()? logout,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (emailChange != null) {
      return emailChange(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_PasswordVisibility value) passwordVisibility,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Login value) login,
  }) {
    return emailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChange value)? emailChange,
    TResult? Function(_PasswordChange value)? passwordChange,
    TResult? Function(_PasswordVisibility value)? passwordVisibility,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Login value)? login,
  }) {
    return emailChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_PasswordVisibility value)? passwordVisibility,
    TResult Function(_Logout value)? logout,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (emailChange != null) {
      return emailChange(this);
    }
    return orElse();
  }
}

abstract class _EmailChange implements LoginEvent {
  const factory _EmailChange(final String email) = _$_EmailChange;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangeCopyWith<_$_EmailChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangeCopyWith<$Res> {
  factory _$$_PasswordChangeCopyWith(
          _$_PasswordChange value, $Res Function(_$_PasswordChange) then) =
      __$$_PasswordChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_PasswordChange>
    implements _$$_PasswordChangeCopyWith<$Res> {
  __$$_PasswordChangeCopyWithImpl(
      _$_PasswordChange _value, $Res Function(_$_PasswordChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChange(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChange implements _PasswordChange {
  const _$_PasswordChange(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordChange(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChange &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangeCopyWith<_$_PasswordChange> get copyWith =>
      __$$_PasswordChangeCopyWithImpl<_$_PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() passwordVisibility,
    required TResult Function() logout,
    required TResult Function() login,
  }) {
    return passwordChange(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? passwordVisibility,
    TResult? Function()? logout,
    TResult? Function()? login,
  }) {
    return passwordChange?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? passwordVisibility,
    TResult Function()? logout,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (passwordChange != null) {
      return passwordChange(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_PasswordVisibility value) passwordVisibility,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Login value) login,
  }) {
    return passwordChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChange value)? emailChange,
    TResult? Function(_PasswordChange value)? passwordChange,
    TResult? Function(_PasswordVisibility value)? passwordVisibility,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Login value)? login,
  }) {
    return passwordChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_PasswordVisibility value)? passwordVisibility,
    TResult Function(_Logout value)? logout,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (passwordChange != null) {
      return passwordChange(this);
    }
    return orElse();
  }
}

abstract class _PasswordChange implements LoginEvent {
  const factory _PasswordChange(final String password) = _$_PasswordChange;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangeCopyWith<_$_PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordVisibilityCopyWith<$Res> {
  factory _$$_PasswordVisibilityCopyWith(_$_PasswordVisibility value,
          $Res Function(_$_PasswordVisibility) then) =
      __$$_PasswordVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordVisibilityCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_PasswordVisibility>
    implements _$$_PasswordVisibilityCopyWith<$Res> {
  __$$_PasswordVisibilityCopyWithImpl(
      _$_PasswordVisibility _value, $Res Function(_$_PasswordVisibility) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PasswordVisibility implements _PasswordVisibility {
  const _$_PasswordVisibility();

  @override
  String toString() {
    return 'LoginEvent.passwordVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() passwordVisibility,
    required TResult Function() logout,
    required TResult Function() login,
  }) {
    return passwordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? passwordVisibility,
    TResult? Function()? logout,
    TResult? Function()? login,
  }) {
    return passwordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? passwordVisibility,
    TResult Function()? logout,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (passwordVisibility != null) {
      return passwordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_PasswordVisibility value) passwordVisibility,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Login value) login,
  }) {
    return passwordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChange value)? emailChange,
    TResult? Function(_PasswordChange value)? passwordChange,
    TResult? Function(_PasswordVisibility value)? passwordVisibility,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Login value)? login,
  }) {
    return passwordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_PasswordVisibility value)? passwordVisibility,
    TResult Function(_Logout value)? logout,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (passwordVisibility != null) {
      return passwordVisibility(this);
    }
    return orElse();
  }
}

abstract class _PasswordVisibility implements LoginEvent {
  const factory _PasswordVisibility() = _$_PasswordVisibility;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() passwordVisibility,
    required TResult Function() logout,
    required TResult Function() login,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? passwordVisibility,
    TResult? Function()? logout,
    TResult? Function()? login,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? passwordVisibility,
    TResult Function()? logout,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_PasswordVisibility value) passwordVisibility,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Login value) login,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChange value)? emailChange,
    TResult? Function(_PasswordChange value)? passwordChange,
    TResult? Function(_PasswordVisibility value)? passwordVisibility,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Login value)? login,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_PasswordVisibility value)? passwordVisibility,
    TResult Function(_Logout value)? logout,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements LoginEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) emailChange,
    required TResult Function(String password) passwordChange,
    required TResult Function() passwordVisibility,
    required TResult Function() logout,
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? emailChange,
    TResult? Function(String password)? passwordChange,
    TResult? Function()? passwordVisibility,
    TResult? Function()? logout,
    TResult? Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? emailChange,
    TResult Function(String password)? passwordChange,
    TResult Function()? passwordVisibility,
    TResult Function()? logout,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EmailChange value) emailChange,
    required TResult Function(_PasswordChange value) passwordChange,
    required TResult Function(_PasswordVisibility value) passwordVisibility,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EmailChange value)? emailChange,
    TResult? Function(_PasswordChange value)? passwordChange,
    TResult? Function(_PasswordVisibility value)? passwordVisibility,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EmailChange value)? emailChange,
    TResult Function(_PasswordChange value)? passwordChange,
    TResult Function(_PasswordVisibility value)? passwordVisibility,
    TResult Function(_Logout value)? logout,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login() = _$_Login;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool visibilty, String password, String email)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool visibilty, String password, String email)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool visibilty, String password, String email)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'LoginState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool visibilty, String password, String email)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements LoginState {
  const factory _Failed() = _$_Failed;
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool visibilty, String password, String email});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibilty = null,
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$_LoginState(
      visibilty: null == visibilty
          ? _value.visibilty
          : visibilty // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.visibilty = false, this.password = '', this.email = ''});

  @override
  @JsonKey()
  final bool visibilty;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'LoginState(visibilty: $visibilty, password: $password, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.visibilty, visibilty) ||
                other.visibilty == visibilty) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visibilty, password, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return $default(visibilty, password, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool visibilty, String password, String email)?
        $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? failed,
  }) {
    return $default?.call(visibilty, password, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool visibilty, String password, String email)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(visibilty, password, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final bool visibilty,
      final String password,
      final String email}) = _$_LoginState;

  bool get visibilty;
  String get password;
  String get email;
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
