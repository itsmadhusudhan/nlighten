// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoListStateTearOff {
  const _$VideoListStateTearOff();

  _VideoListStateInitial initial() {
    return _VideoListStateInitial();
  }

  _VideoListStateLoading loading() {
    return _VideoListStateLoading();
  }

  _VideoListStateError error({required String message}) {
    return _VideoListStateError(
      message: message,
    );
  }

  _VideoListStateSuccess success(List<VideoModel> videos) {
    return _VideoListStateSuccess(
      videos,
    );
  }
}

/// @nodoc
const $VideoListState = _$VideoListStateTearOff();

/// @nodoc
mixin _$VideoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<VideoModel> videos) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<VideoModel> videos)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoListStateInitial value) initial,
    required TResult Function(_VideoListStateLoading value) loading,
    required TResult Function(_VideoListStateError value) error,
    required TResult Function(_VideoListStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoListStateInitial value)? initial,
    TResult Function(_VideoListStateLoading value)? loading,
    TResult Function(_VideoListStateError value)? error,
    TResult Function(_VideoListStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoListStateCopyWith<$Res> {
  factory $VideoListStateCopyWith(
          VideoListState value, $Res Function(VideoListState) then) =
      _$VideoListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoListStateCopyWithImpl<$Res>
    implements $VideoListStateCopyWith<$Res> {
  _$VideoListStateCopyWithImpl(this._value, this._then);

  final VideoListState _value;
  // ignore: unused_field
  final $Res Function(VideoListState) _then;
}

/// @nodoc
abstract class _$VideoListStateInitialCopyWith<$Res> {
  factory _$VideoListStateInitialCopyWith(_VideoListStateInitial value,
          $Res Function(_VideoListStateInitial) then) =
      __$VideoListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$VideoListStateInitialCopyWithImpl<$Res>
    extends _$VideoListStateCopyWithImpl<$Res>
    implements _$VideoListStateInitialCopyWith<$Res> {
  __$VideoListStateInitialCopyWithImpl(_VideoListStateInitial _value,
      $Res Function(_VideoListStateInitial) _then)
      : super(_value, (v) => _then(v as _VideoListStateInitial));

  @override
  _VideoListStateInitial get _value => super._value as _VideoListStateInitial;
}

/// @nodoc

class _$_VideoListStateInitial implements _VideoListStateInitial {
  _$_VideoListStateInitial();

  @override
  String toString() {
    return 'VideoListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VideoListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<VideoModel> videos) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<VideoModel> videos)? success,
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
    required TResult Function(_VideoListStateInitial value) initial,
    required TResult Function(_VideoListStateLoading value) loading,
    required TResult Function(_VideoListStateError value) error,
    required TResult Function(_VideoListStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoListStateInitial value)? initial,
    TResult Function(_VideoListStateLoading value)? loading,
    TResult Function(_VideoListStateError value)? error,
    TResult Function(_VideoListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VideoListStateInitial implements VideoListState {
  factory _VideoListStateInitial() = _$_VideoListStateInitial;
}

/// @nodoc
abstract class _$VideoListStateLoadingCopyWith<$Res> {
  factory _$VideoListStateLoadingCopyWith(_VideoListStateLoading value,
          $Res Function(_VideoListStateLoading) then) =
      __$VideoListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$VideoListStateLoadingCopyWithImpl<$Res>
    extends _$VideoListStateCopyWithImpl<$Res>
    implements _$VideoListStateLoadingCopyWith<$Res> {
  __$VideoListStateLoadingCopyWithImpl(_VideoListStateLoading _value,
      $Res Function(_VideoListStateLoading) _then)
      : super(_value, (v) => _then(v as _VideoListStateLoading));

  @override
  _VideoListStateLoading get _value => super._value as _VideoListStateLoading;
}

/// @nodoc

class _$_VideoListStateLoading implements _VideoListStateLoading {
  _$_VideoListStateLoading();

  @override
  String toString() {
    return 'VideoListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VideoListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<VideoModel> videos) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<VideoModel> videos)? success,
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
    required TResult Function(_VideoListStateInitial value) initial,
    required TResult Function(_VideoListStateLoading value) loading,
    required TResult Function(_VideoListStateError value) error,
    required TResult Function(_VideoListStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoListStateInitial value)? initial,
    TResult Function(_VideoListStateLoading value)? loading,
    TResult Function(_VideoListStateError value)? error,
    TResult Function(_VideoListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _VideoListStateLoading implements VideoListState {
  factory _VideoListStateLoading() = _$_VideoListStateLoading;
}

/// @nodoc
abstract class _$VideoListStateErrorCopyWith<$Res> {
  factory _$VideoListStateErrorCopyWith(_VideoListStateError value,
          $Res Function(_VideoListStateError) then) =
      __$VideoListStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$VideoListStateErrorCopyWithImpl<$Res>
    extends _$VideoListStateCopyWithImpl<$Res>
    implements _$VideoListStateErrorCopyWith<$Res> {
  __$VideoListStateErrorCopyWithImpl(
      _VideoListStateError _value, $Res Function(_VideoListStateError) _then)
      : super(_value, (v) => _then(v as _VideoListStateError));

  @override
  _VideoListStateError get _value => super._value as _VideoListStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_VideoListStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VideoListStateError implements _VideoListStateError {
  _$_VideoListStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'VideoListState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoListStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$VideoListStateErrorCopyWith<_VideoListStateError> get copyWith =>
      __$VideoListStateErrorCopyWithImpl<_VideoListStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<VideoModel> videos) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<VideoModel> videos)? success,
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
    required TResult Function(_VideoListStateInitial value) initial,
    required TResult Function(_VideoListStateLoading value) loading,
    required TResult Function(_VideoListStateError value) error,
    required TResult Function(_VideoListStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoListStateInitial value)? initial,
    TResult Function(_VideoListStateLoading value)? loading,
    TResult Function(_VideoListStateError value)? error,
    TResult Function(_VideoListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _VideoListStateError implements VideoListState {
  factory _VideoListStateError({required String message}) =
      _$_VideoListStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VideoListStateErrorCopyWith<_VideoListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VideoListStateSuccessCopyWith<$Res> {
  factory _$VideoListStateSuccessCopyWith(_VideoListStateSuccess value,
          $Res Function(_VideoListStateSuccess) then) =
      __$VideoListStateSuccessCopyWithImpl<$Res>;
  $Res call({List<VideoModel> videos});
}

/// @nodoc
class __$VideoListStateSuccessCopyWithImpl<$Res>
    extends _$VideoListStateCopyWithImpl<$Res>
    implements _$VideoListStateSuccessCopyWith<$Res> {
  __$VideoListStateSuccessCopyWithImpl(_VideoListStateSuccess _value,
      $Res Function(_VideoListStateSuccess) _then)
      : super(_value, (v) => _then(v as _VideoListStateSuccess));

  @override
  _VideoListStateSuccess get _value => super._value as _VideoListStateSuccess;

  @override
  $Res call({
    Object? videos = freezed,
  }) {
    return _then(_VideoListStateSuccess(
      videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc

class _$_VideoListStateSuccess implements _VideoListStateSuccess {
  _$_VideoListStateSuccess(this.videos);

  @override
  final List<VideoModel> videos;

  @override
  String toString() {
    return 'VideoListState.success(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoListStateSuccess &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videos);

  @JsonKey(ignore: true)
  @override
  _$VideoListStateSuccessCopyWith<_VideoListStateSuccess> get copyWith =>
      __$VideoListStateSuccessCopyWithImpl<_VideoListStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<VideoModel> videos) success,
  }) {
    return success(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<VideoModel> videos)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoListStateInitial value) initial,
    required TResult Function(_VideoListStateLoading value) loading,
    required TResult Function(_VideoListStateError value) error,
    required TResult Function(_VideoListStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoListStateInitial value)? initial,
    TResult Function(_VideoListStateLoading value)? loading,
    TResult Function(_VideoListStateError value)? error,
    TResult Function(_VideoListStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _VideoListStateSuccess implements VideoListState {
  factory _VideoListStateSuccess(List<VideoModel> videos) =
      _$_VideoListStateSuccess;

  List<VideoModel> get videos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VideoListStateSuccessCopyWith<_VideoListStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
