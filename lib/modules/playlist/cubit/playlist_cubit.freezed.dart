// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'playlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaylistStateTearOff {
  const _$PlaylistStateTearOff();

  _PlaylistStateInitial initial() {
    return _PlaylistStateInitial();
  }

  _PlaylistStateLoading loading() {
    return _PlaylistStateLoading();
  }

  _PlaylistStateError error({required String message}) {
    return _PlaylistStateError(
      message: message,
    );
  }

  _PlaylistStateSuccess success(List<Playlist> playlists) {
    return _PlaylistStateSuccess(
      playlists,
    );
  }
}

/// @nodoc
const $PlaylistState = _$PlaylistStateTearOff();

/// @nodoc
mixin _$PlaylistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Playlist> playlists) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Playlist> playlists)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaylistStateInitial value) initial,
    required TResult Function(_PlaylistStateLoading value) loading,
    required TResult Function(_PlaylistStateError value) error,
    required TResult Function(_PlaylistStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaylistStateInitial value)? initial,
    TResult Function(_PlaylistStateLoading value)? loading,
    TResult Function(_PlaylistStateError value)? error,
    TResult Function(_PlaylistStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateCopyWith<$Res> {
  factory $PlaylistStateCopyWith(
          PlaylistState value, $Res Function(PlaylistState) then) =
      _$PlaylistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._value, this._then);

  final PlaylistState _value;
  // ignore: unused_field
  final $Res Function(PlaylistState) _then;
}

/// @nodoc
abstract class _$PlaylistStateInitialCopyWith<$Res> {
  factory _$PlaylistStateInitialCopyWith(_PlaylistStateInitial value,
          $Res Function(_PlaylistStateInitial) then) =
      __$PlaylistStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlaylistStateInitialCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res>
    implements _$PlaylistStateInitialCopyWith<$Res> {
  __$PlaylistStateInitialCopyWithImpl(
      _PlaylistStateInitial _value, $Res Function(_PlaylistStateInitial) _then)
      : super(_value, (v) => _then(v as _PlaylistStateInitial));

  @override
  _PlaylistStateInitial get _value => super._value as _PlaylistStateInitial;
}

/// @nodoc

class _$_PlaylistStateInitial implements _PlaylistStateInitial {
  _$_PlaylistStateInitial();

  @override
  String toString() {
    return 'PlaylistState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PlaylistStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Playlist> playlists) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Playlist> playlists)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaylistStateInitial value) initial,
    required TResult Function(_PlaylistStateLoading value) loading,
    required TResult Function(_PlaylistStateError value) error,
    required TResult Function(_PlaylistStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaylistStateInitial value)? initial,
    TResult Function(_PlaylistStateLoading value)? loading,
    TResult Function(_PlaylistStateError value)? error,
    TResult Function(_PlaylistStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PlaylistStateInitial implements PlaylistState {
  factory _PlaylistStateInitial() = _$_PlaylistStateInitial;
}

/// @nodoc
abstract class _$PlaylistStateLoadingCopyWith<$Res> {
  factory _$PlaylistStateLoadingCopyWith(_PlaylistStateLoading value,
          $Res Function(_PlaylistStateLoading) then) =
      __$PlaylistStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlaylistStateLoadingCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res>
    implements _$PlaylistStateLoadingCopyWith<$Res> {
  __$PlaylistStateLoadingCopyWithImpl(
      _PlaylistStateLoading _value, $Res Function(_PlaylistStateLoading) _then)
      : super(_value, (v) => _then(v as _PlaylistStateLoading));

  @override
  _PlaylistStateLoading get _value => super._value as _PlaylistStateLoading;
}

/// @nodoc

class _$_PlaylistStateLoading implements _PlaylistStateLoading {
  _$_PlaylistStateLoading();

  @override
  String toString() {
    return 'PlaylistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PlaylistStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Playlist> playlists) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Playlist> playlists)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaylistStateInitial value) initial,
    required TResult Function(_PlaylistStateLoading value) loading,
    required TResult Function(_PlaylistStateError value) error,
    required TResult Function(_PlaylistStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaylistStateInitial value)? initial,
    TResult Function(_PlaylistStateLoading value)? loading,
    TResult Function(_PlaylistStateError value)? error,
    TResult Function(_PlaylistStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlaylistStateLoading implements PlaylistState {
  factory _PlaylistStateLoading() = _$_PlaylistStateLoading;
}

/// @nodoc
abstract class _$PlaylistStateErrorCopyWith<$Res> {
  factory _$PlaylistStateErrorCopyWith(
          _PlaylistStateError value, $Res Function(_PlaylistStateError) then) =
      __$PlaylistStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$PlaylistStateErrorCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res>
    implements _$PlaylistStateErrorCopyWith<$Res> {
  __$PlaylistStateErrorCopyWithImpl(
      _PlaylistStateError _value, $Res Function(_PlaylistStateError) _then)
      : super(_value, (v) => _then(v as _PlaylistStateError));

  @override
  _PlaylistStateError get _value => super._value as _PlaylistStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_PlaylistStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlaylistStateError implements _PlaylistStateError {
  _$_PlaylistStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PlaylistState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaylistStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PlaylistStateErrorCopyWith<_PlaylistStateError> get copyWith =>
      __$PlaylistStateErrorCopyWithImpl<_PlaylistStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Playlist> playlists) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Playlist> playlists)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaylistStateInitial value) initial,
    required TResult Function(_PlaylistStateLoading value) loading,
    required TResult Function(_PlaylistStateError value) error,
    required TResult Function(_PlaylistStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaylistStateInitial value)? initial,
    TResult Function(_PlaylistStateLoading value)? loading,
    TResult Function(_PlaylistStateError value)? error,
    TResult Function(_PlaylistStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PlaylistStateError implements PlaylistState {
  factory _PlaylistStateError({required String message}) =
      _$_PlaylistStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlaylistStateErrorCopyWith<_PlaylistStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlaylistStateSuccessCopyWith<$Res> {
  factory _$PlaylistStateSuccessCopyWith(_PlaylistStateSuccess value,
          $Res Function(_PlaylistStateSuccess) then) =
      __$PlaylistStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Playlist> playlists});
}

/// @nodoc
class __$PlaylistStateSuccessCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res>
    implements _$PlaylistStateSuccessCopyWith<$Res> {
  __$PlaylistStateSuccessCopyWithImpl(
      _PlaylistStateSuccess _value, $Res Function(_PlaylistStateSuccess) _then)
      : super(_value, (v) => _then(v as _PlaylistStateSuccess));

  @override
  _PlaylistStateSuccess get _value => super._value as _PlaylistStateSuccess;

  @override
  $Res call({
    Object? playlists = freezed,
  }) {
    return _then(_PlaylistStateSuccess(
      playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
    ));
  }
}

/// @nodoc

class _$_PlaylistStateSuccess implements _PlaylistStateSuccess {
  _$_PlaylistStateSuccess(this.playlists);

  @override
  final List<Playlist> playlists;

  @override
  String toString() {
    return 'PlaylistState.success(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaylistStateSuccess &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playlists);

  @JsonKey(ignore: true)
  @override
  _$PlaylistStateSuccessCopyWith<_PlaylistStateSuccess> get copyWith =>
      __$PlaylistStateSuccessCopyWithImpl<_PlaylistStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Playlist> playlists) success,
  }) {
    return success(playlists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Playlist> playlists)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(playlists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaylistStateInitial value) initial,
    required TResult Function(_PlaylistStateLoading value) loading,
    required TResult Function(_PlaylistStateError value) error,
    required TResult Function(_PlaylistStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaylistStateInitial value)? initial,
    TResult Function(_PlaylistStateLoading value)? loading,
    TResult Function(_PlaylistStateError value)? error,
    TResult Function(_PlaylistStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PlaylistStateSuccess implements PlaylistState {
  factory _PlaylistStateSuccess(List<Playlist> playlists) =
      _$_PlaylistStateSuccess;

  List<Playlist> get playlists => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlaylistStateSuccessCopyWith<_PlaylistStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
