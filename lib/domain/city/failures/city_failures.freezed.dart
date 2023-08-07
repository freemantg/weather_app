// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() authorizationError,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? authorizationError,
    TResult? Function()? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? authorizationError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_AuthorizationError value) authorizationError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_AuthorizationError value)? authorizationError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_AuthorizationError value)? authorizationError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityFailureCopyWith<$Res> {
  factory $CityFailureCopyWith(
          CityFailure value, $Res Function(CityFailure) then) =
      _$CityFailureCopyWithImpl<$Res, CityFailure>;
}

/// @nodoc
class _$CityFailureCopyWithImpl<$Res, $Val extends CityFailure>
    implements $CityFailureCopyWith<$Res> {
  _$CityFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$CityFailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'CityFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() authorizationError,
    required TResult Function() unexpectedError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? authorizationError,
    TResult? Function()? unexpectedError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? authorizationError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_AuthorizationError value) authorizationError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_AuthorizationError value)? authorizationError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_AuthorizationError value)? authorizationError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements CityFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_NetworkErrorCopyWith<$Res> {
  factory _$$_NetworkErrorCopyWith(
          _$_NetworkError value, $Res Function(_$_NetworkError) then) =
      __$$_NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkErrorCopyWithImpl<$Res>
    extends _$CityFailureCopyWithImpl<$Res, _$_NetworkError>
    implements _$$_NetworkErrorCopyWith<$Res> {
  __$$_NetworkErrorCopyWithImpl(
      _$_NetworkError _value, $Res Function(_$_NetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkError implements _NetworkError {
  const _$_NetworkError();

  @override
  String toString() {
    return 'CityFailure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() authorizationError,
    required TResult Function() unexpectedError,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? authorizationError,
    TResult? Function()? unexpectedError,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? authorizationError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_AuthorizationError value) authorizationError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_AuthorizationError value)? authorizationError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_AuthorizationError value)? authorizationError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements CityFailure {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$$_AuthorizationErrorCopyWith<$Res> {
  factory _$$_AuthorizationErrorCopyWith(_$_AuthorizationError value,
          $Res Function(_$_AuthorizationError) then) =
      __$$_AuthorizationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizationErrorCopyWithImpl<$Res>
    extends _$CityFailureCopyWithImpl<$Res, _$_AuthorizationError>
    implements _$$_AuthorizationErrorCopyWith<$Res> {
  __$$_AuthorizationErrorCopyWithImpl(
      _$_AuthorizationError _value, $Res Function(_$_AuthorizationError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthorizationError implements _AuthorizationError {
  const _$_AuthorizationError();

  @override
  String toString() {
    return 'CityFailure.authorizationError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthorizationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() authorizationError,
    required TResult Function() unexpectedError,
  }) {
    return authorizationError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? authorizationError,
    TResult? Function()? unexpectedError,
  }) {
    return authorizationError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? authorizationError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (authorizationError != null) {
      return authorizationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_AuthorizationError value) authorizationError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return authorizationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_AuthorizationError value)? authorizationError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
  }) {
    return authorizationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_AuthorizationError value)? authorizationError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (authorizationError != null) {
      return authorizationError(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationError implements CityFailure {
  const factory _AuthorizationError() = _$_AuthorizationError;
}

/// @nodoc
abstract class _$$_UnexpectedErrorCopyWith<$Res> {
  factory _$$_UnexpectedErrorCopyWith(
          _$_UnexpectedError value, $Res Function(_$_UnexpectedError) then) =
      __$$_UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedErrorCopyWithImpl<$Res>
    extends _$CityFailureCopyWithImpl<$Res, _$_UnexpectedError>
    implements _$$_UnexpectedErrorCopyWith<$Res> {
  __$$_UnexpectedErrorCopyWithImpl(
      _$_UnexpectedError _value, $Res Function(_$_UnexpectedError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnexpectedError implements _UnexpectedError {
  const _$_UnexpectedError();

  @override
  String toString() {
    return 'CityFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() authorizationError,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? authorizationError,
    TResult? Function()? unexpectedError,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? authorizationError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_AuthorizationError value) authorizationError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_AuthorizationError value)? authorizationError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_AuthorizationError value)? authorizationError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements CityFailure {
  const factory _UnexpectedError() = _$_UnexpectedError;
}
