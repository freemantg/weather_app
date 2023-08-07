// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteException {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) network,
    required TResult Function(String? message) authorization,
    required TResult Function(String? message) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? authorization,
    TResult? Function(String? message)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? network,
    TResult Function(String? message)? authorization,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) server,
    required TResult Function(NetworkException value) network,
    required TResult Function(AuthorizationException value) authorization,
    required TResult Function(UnexpectedException value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? server,
    TResult? Function(NetworkException value)? network,
    TResult? Function(AuthorizationException value)? authorization,
    TResult? Function(UnexpectedException value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? server,
    TResult Function(NetworkException value)? network,
    TResult Function(AuthorizationException value)? authorization,
    TResult Function(UnexpectedException value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteExceptionCopyWith<RemoteException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteExceptionCopyWith<$Res> {
  factory $RemoteExceptionCopyWith(
          RemoteException value, $Res Function(RemoteException) then) =
      _$RemoteExceptionCopyWithImpl<$Res, RemoteException>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$RemoteExceptionCopyWithImpl<$Res, $Val extends RemoteException>
    implements $RemoteExceptionCopyWith<$Res> {
  _$RemoteExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerExceptionCopyWith<$Res>
    implements $RemoteExceptionCopyWith<$Res> {
  factory _$$ServerExceptionCopyWith(
          _$ServerException value, $Res Function(_$ServerException) then) =
      __$$ServerExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerExceptionCopyWithImpl<$Res>
    extends _$RemoteExceptionCopyWithImpl<$Res, _$ServerException>
    implements _$$ServerExceptionCopyWith<$Res> {
  __$$ServerExceptionCopyWithImpl(
      _$ServerException _value, $Res Function(_$ServerException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerException implements ServerException {
  const _$ServerException({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'RemoteException.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionCopyWith<_$ServerException> get copyWith =>
      __$$ServerExceptionCopyWithImpl<_$ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) network,
    required TResult Function(String? message) authorization,
    required TResult Function(String? message) unexpected,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? authorization,
    TResult? Function(String? message)? unexpected,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? network,
    TResult Function(String? message)? authorization,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) server,
    required TResult Function(NetworkException value) network,
    required TResult Function(AuthorizationException value) authorization,
    required TResult Function(UnexpectedException value) unexpected,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? server,
    TResult? Function(NetworkException value)? network,
    TResult? Function(AuthorizationException value)? authorization,
    TResult? Function(UnexpectedException value)? unexpected,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? server,
    TResult Function(NetworkException value)? network,
    TResult Function(AuthorizationException value)? authorization,
    TResult Function(UnexpectedException value)? unexpected,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerException implements RemoteException {
  const factory ServerException({final String? message}) = _$ServerException;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerExceptionCopyWith<_$ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkExceptionCopyWith<$Res>
    implements $RemoteExceptionCopyWith<$Res> {
  factory _$$NetworkExceptionCopyWith(
          _$NetworkException value, $Res Function(_$NetworkException) then) =
      __$$NetworkExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NetworkExceptionCopyWithImpl<$Res>
    extends _$RemoteExceptionCopyWithImpl<$Res, _$NetworkException>
    implements _$$NetworkExceptionCopyWith<$Res> {
  __$$NetworkExceptionCopyWithImpl(
      _$NetworkException _value, $Res Function(_$NetworkException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NetworkException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NetworkException implements NetworkException {
  const _$NetworkException({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'RemoteException.network(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkExceptionCopyWith<_$NetworkException> get copyWith =>
      __$$NetworkExceptionCopyWithImpl<_$NetworkException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) network,
    required TResult Function(String? message) authorization,
    required TResult Function(String? message) unexpected,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? authorization,
    TResult? Function(String? message)? unexpected,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? network,
    TResult Function(String? message)? authorization,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) server,
    required TResult Function(NetworkException value) network,
    required TResult Function(AuthorizationException value) authorization,
    required TResult Function(UnexpectedException value) unexpected,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? server,
    TResult? Function(NetworkException value)? network,
    TResult? Function(AuthorizationException value)? authorization,
    TResult? Function(UnexpectedException value)? unexpected,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? server,
    TResult Function(NetworkException value)? network,
    TResult Function(AuthorizationException value)? authorization,
    TResult Function(UnexpectedException value)? unexpected,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkException implements RemoteException {
  const factory NetworkException({final String? message}) = _$NetworkException;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$NetworkExceptionCopyWith<_$NetworkException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizationExceptionCopyWith<$Res>
    implements $RemoteExceptionCopyWith<$Res> {
  factory _$$AuthorizationExceptionCopyWith(_$AuthorizationException value,
          $Res Function(_$AuthorizationException) then) =
      __$$AuthorizationExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AuthorizationExceptionCopyWithImpl<$Res>
    extends _$RemoteExceptionCopyWithImpl<$Res, _$AuthorizationException>
    implements _$$AuthorizationExceptionCopyWith<$Res> {
  __$$AuthorizationExceptionCopyWithImpl(_$AuthorizationException _value,
      $Res Function(_$AuthorizationException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthorizationException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthorizationException implements AuthorizationException {
  const _$AuthorizationException({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'RemoteException.authorization(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationExceptionCopyWith<_$AuthorizationException> get copyWith =>
      __$$AuthorizationExceptionCopyWithImpl<_$AuthorizationException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) network,
    required TResult Function(String? message) authorization,
    required TResult Function(String? message) unexpected,
  }) {
    return authorization(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? authorization,
    TResult? Function(String? message)? unexpected,
  }) {
    return authorization?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? network,
    TResult Function(String? message)? authorization,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (authorization != null) {
      return authorization(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) server,
    required TResult Function(NetworkException value) network,
    required TResult Function(AuthorizationException value) authorization,
    required TResult Function(UnexpectedException value) unexpected,
  }) {
    return authorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? server,
    TResult? Function(NetworkException value)? network,
    TResult? Function(AuthorizationException value)? authorization,
    TResult? Function(UnexpectedException value)? unexpected,
  }) {
    return authorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? server,
    TResult Function(NetworkException value)? network,
    TResult Function(AuthorizationException value)? authorization,
    TResult Function(UnexpectedException value)? unexpected,
    required TResult orElse(),
  }) {
    if (authorization != null) {
      return authorization(this);
    }
    return orElse();
  }
}

abstract class AuthorizationException implements RemoteException {
  const factory AuthorizationException({final String? message}) =
      _$AuthorizationException;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthorizationExceptionCopyWith<_$AuthorizationException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedExceptionCopyWith<$Res>
    implements $RemoteExceptionCopyWith<$Res> {
  factory _$$UnexpectedExceptionCopyWith(_$UnexpectedException value,
          $Res Function(_$UnexpectedException) then) =
      __$$UnexpectedExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnexpectedExceptionCopyWithImpl<$Res>
    extends _$RemoteExceptionCopyWithImpl<$Res, _$UnexpectedException>
    implements _$$UnexpectedExceptionCopyWith<$Res> {
  __$$UnexpectedExceptionCopyWithImpl(
      _$UnexpectedException _value, $Res Function(_$UnexpectedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnexpectedException(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnexpectedException implements UnexpectedException {
  const _$UnexpectedException({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'RemoteException.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedExceptionCopyWith<_$UnexpectedException> get copyWith =>
      __$$UnexpectedExceptionCopyWithImpl<_$UnexpectedException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) network,
    required TResult Function(String? message) authorization,
    required TResult Function(String? message) unexpected,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? authorization,
    TResult? Function(String? message)? unexpected,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? network,
    TResult Function(String? message)? authorization,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) server,
    required TResult Function(NetworkException value) network,
    required TResult Function(AuthorizationException value) authorization,
    required TResult Function(UnexpectedException value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? server,
    TResult? Function(NetworkException value)? network,
    TResult? Function(AuthorizationException value)? authorization,
    TResult? Function(UnexpectedException value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? server,
    TResult Function(NetworkException value)? network,
    TResult Function(AuthorizationException value)? authorization,
    TResult Function(UnexpectedException value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedException implements RemoteException {
  const factory UnexpectedException({final String? message}) =
      _$UnexpectedException;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedExceptionCopyWith<_$UnexpectedException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationException {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) serviceDisabled,
    required TResult Function(String? message) permissionDeniedForever,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? permissionDenied,
    TResult? Function(String? message)? serviceDisabled,
    TResult? Function(String? message)? permissionDeniedForever,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? serviceDisabled,
    TResult Function(String? message)? permissionDeniedForever,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(PermissionDeniedForever value)
        permissionDeniedForever,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(PermissionDeniedForever value)? permissionDeniedForever,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(PermissionDeniedForever value)? permissionDeniedForever,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationExceptionCopyWith<LocationException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationExceptionCopyWith<$Res> {
  factory $LocationExceptionCopyWith(
          LocationException value, $Res Function(LocationException) then) =
      _$LocationExceptionCopyWithImpl<$Res, LocationException>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$LocationExceptionCopyWithImpl<$Res, $Val extends LocationException>
    implements $LocationExceptionCopyWith<$Res> {
  _$LocationExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionDeniedCopyWith<$Res>
    implements $LocationExceptionCopyWith<$Res> {
  factory _$$PermissionDeniedCopyWith(
          _$PermissionDenied value, $Res Function(_$PermissionDenied) then) =
      __$$PermissionDeniedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PermissionDeniedCopyWithImpl<$Res>
    extends _$LocationExceptionCopyWithImpl<$Res, _$PermissionDenied>
    implements _$$PermissionDeniedCopyWith<$Res> {
  __$$PermissionDeniedCopyWithImpl(
      _$PermissionDenied _value, $Res Function(_$PermissionDenied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PermissionDenied(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PermissionDenied implements PermissionDenied {
  const _$PermissionDenied({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LocationException.permissionDenied(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionDenied &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionDeniedCopyWith<_$PermissionDenied> get copyWith =>
      __$$PermissionDeniedCopyWithImpl<_$PermissionDenied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) serviceDisabled,
    required TResult Function(String? message) permissionDeniedForever,
  }) {
    return permissionDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? permissionDenied,
    TResult? Function(String? message)? serviceDisabled,
    TResult? Function(String? message)? permissionDeniedForever,
  }) {
    return permissionDenied?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? serviceDisabled,
    TResult Function(String? message)? permissionDeniedForever,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(PermissionDeniedForever value)
        permissionDeniedForever,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(PermissionDeniedForever value)? permissionDeniedForever,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(PermissionDeniedForever value)? permissionDeniedForever,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionDenied implements LocationException {
  const factory PermissionDenied({final String? message}) = _$PermissionDenied;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PermissionDeniedCopyWith<_$PermissionDenied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceDisabledCopyWith<$Res>
    implements $LocationExceptionCopyWith<$Res> {
  factory _$$ServiceDisabledCopyWith(
          _$ServiceDisabled value, $Res Function(_$ServiceDisabled) then) =
      __$$ServiceDisabledCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServiceDisabledCopyWithImpl<$Res>
    extends _$LocationExceptionCopyWithImpl<$Res, _$ServiceDisabled>
    implements _$$ServiceDisabledCopyWith<$Res> {
  __$$ServiceDisabledCopyWithImpl(
      _$ServiceDisabled _value, $Res Function(_$ServiceDisabled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServiceDisabled(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServiceDisabled implements ServiceDisabled {
  const _$ServiceDisabled({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LocationException.serviceDisabled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDisabled &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDisabledCopyWith<_$ServiceDisabled> get copyWith =>
      __$$ServiceDisabledCopyWithImpl<_$ServiceDisabled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) serviceDisabled,
    required TResult Function(String? message) permissionDeniedForever,
  }) {
    return serviceDisabled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? permissionDenied,
    TResult? Function(String? message)? serviceDisabled,
    TResult? Function(String? message)? permissionDeniedForever,
  }) {
    return serviceDisabled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? serviceDisabled,
    TResult Function(String? message)? permissionDeniedForever,
    required TResult orElse(),
  }) {
    if (serviceDisabled != null) {
      return serviceDisabled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(PermissionDeniedForever value)
        permissionDeniedForever,
  }) {
    return serviceDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(PermissionDeniedForever value)? permissionDeniedForever,
  }) {
    return serviceDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(PermissionDeniedForever value)? permissionDeniedForever,
    required TResult orElse(),
  }) {
    if (serviceDisabled != null) {
      return serviceDisabled(this);
    }
    return orElse();
  }
}

abstract class ServiceDisabled implements LocationException {
  const factory ServiceDisabled({final String? message}) = _$ServiceDisabled;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ServiceDisabledCopyWith<_$ServiceDisabled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionDeniedForeverCopyWith<$Res>
    implements $LocationExceptionCopyWith<$Res> {
  factory _$$PermissionDeniedForeverCopyWith(_$PermissionDeniedForever value,
          $Res Function(_$PermissionDeniedForever) then) =
      __$$PermissionDeniedForeverCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PermissionDeniedForeverCopyWithImpl<$Res>
    extends _$LocationExceptionCopyWithImpl<$Res, _$PermissionDeniedForever>
    implements _$$PermissionDeniedForeverCopyWith<$Res> {
  __$$PermissionDeniedForeverCopyWithImpl(_$PermissionDeniedForever _value,
      $Res Function(_$PermissionDeniedForever) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PermissionDeniedForever(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PermissionDeniedForever implements PermissionDeniedForever {
  const _$PermissionDeniedForever({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LocationException.permissionDeniedForever(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionDeniedForever &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionDeniedForeverCopyWith<_$PermissionDeniedForever> get copyWith =>
      __$$PermissionDeniedForeverCopyWithImpl<_$PermissionDeniedForever>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) serviceDisabled,
    required TResult Function(String? message) permissionDeniedForever,
  }) {
    return permissionDeniedForever(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? permissionDenied,
    TResult? Function(String? message)? serviceDisabled,
    TResult? Function(String? message)? permissionDeniedForever,
  }) {
    return permissionDeniedForever?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? serviceDisabled,
    TResult Function(String? message)? permissionDeniedForever,
    required TResult orElse(),
  }) {
    if (permissionDeniedForever != null) {
      return permissionDeniedForever(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(ServiceDisabled value) serviceDisabled,
    required TResult Function(PermissionDeniedForever value)
        permissionDeniedForever,
  }) {
    return permissionDeniedForever(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(ServiceDisabled value)? serviceDisabled,
    TResult? Function(PermissionDeniedForever value)? permissionDeniedForever,
  }) {
    return permissionDeniedForever?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(ServiceDisabled value)? serviceDisabled,
    TResult Function(PermissionDeniedForever value)? permissionDeniedForever,
    required TResult orElse(),
  }) {
    if (permissionDeniedForever != null) {
      return permissionDeniedForever(this);
    }
    return orElse();
  }
}

abstract class PermissionDeniedForever implements LocationException {
  const factory PermissionDeniedForever({final String? message}) =
      _$PermissionDeniedForever;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PermissionDeniedForeverCopyWith<_$PermissionDeniedForever> get copyWith =>
      throw _privateConstructorUsedError;
}
