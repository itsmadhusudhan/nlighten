// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoControllerEventTearOff {
  const _$VideoControllerEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $VideoControllerEvent = _$VideoControllerEventTearOff();

/// @nodoc
mixin _$VideoControllerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoControllerEventCopyWith<$Res> {
  factory $VideoControllerEventCopyWith(VideoControllerEvent value,
          $Res Function(VideoControllerEvent) then) =
      _$VideoControllerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoControllerEventCopyWithImpl<$Res>
    implements $VideoControllerEventCopyWith<$Res> {
  _$VideoControllerEventCopyWithImpl(this._value, this._then);

  final VideoControllerEvent _value;
  // ignore: unused_field
  final $Res Function(VideoControllerEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$VideoControllerEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'VideoControllerEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements VideoControllerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$VideoControllerStateTearOff {
  const _$VideoControllerStateTearOff();

  _VideoPlayerState call({required YoutubeService youtubeService}) {
    return _VideoPlayerState(
      youtubeService: youtubeService,
    );
  }
}

/// @nodoc
const $VideoControllerState = _$VideoControllerStateTearOff();

/// @nodoc
mixin _$VideoControllerState {
  YoutubeService get youtubeService => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoControllerStateCopyWith<VideoControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoControllerStateCopyWith<$Res> {
  factory $VideoControllerStateCopyWith(VideoControllerState value,
          $Res Function(VideoControllerState) then) =
      _$VideoControllerStateCopyWithImpl<$Res>;
  $Res call({YoutubeService youtubeService});
}

/// @nodoc
class _$VideoControllerStateCopyWithImpl<$Res>
    implements $VideoControllerStateCopyWith<$Res> {
  _$VideoControllerStateCopyWithImpl(this._value, this._then);

  final VideoControllerState _value;
  // ignore: unused_field
  final $Res Function(VideoControllerState) _then;

  @override
  $Res call({
    Object? youtubeService = freezed,
  }) {
    return _then(_value.copyWith(
      youtubeService: youtubeService == freezed
          ? _value.youtubeService
          : youtubeService // ignore: cast_nullable_to_non_nullable
              as YoutubeService,
    ));
  }
}

/// @nodoc
abstract class _$VideoPlayerStateCopyWith<$Res>
    implements $VideoControllerStateCopyWith<$Res> {
  factory _$VideoPlayerStateCopyWith(
          _VideoPlayerState value, $Res Function(_VideoPlayerState) then) =
      __$VideoPlayerStateCopyWithImpl<$Res>;
  @override
  $Res call({YoutubeService youtubeService});
}

/// @nodoc
class __$VideoPlayerStateCopyWithImpl<$Res>
    extends _$VideoControllerStateCopyWithImpl<$Res>
    implements _$VideoPlayerStateCopyWith<$Res> {
  __$VideoPlayerStateCopyWithImpl(
      _VideoPlayerState _value, $Res Function(_VideoPlayerState) _then)
      : super(_value, (v) => _then(v as _VideoPlayerState));

  @override
  _VideoPlayerState get _value => super._value as _VideoPlayerState;

  @override
  $Res call({
    Object? youtubeService = freezed,
  }) {
    return _then(_VideoPlayerState(
      youtubeService: youtubeService == freezed
          ? _value.youtubeService
          : youtubeService // ignore: cast_nullable_to_non_nullable
              as YoutubeService,
    ));
  }
}

/// @nodoc

class _$_VideoPlayerState implements _VideoPlayerState {
  const _$_VideoPlayerState({required this.youtubeService});

  @override
  final YoutubeService youtubeService;

  @override
  String toString() {
    return 'VideoControllerState(youtubeService: $youtubeService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoPlayerState &&
            (identical(other.youtubeService, youtubeService) ||
                const DeepCollectionEquality()
                    .equals(other.youtubeService, youtubeService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(youtubeService);

  @JsonKey(ignore: true)
  @override
  _$VideoPlayerStateCopyWith<_VideoPlayerState> get copyWith =>
      __$VideoPlayerStateCopyWithImpl<_VideoPlayerState>(this, _$identity);
}

abstract class _VideoPlayerState implements VideoControllerState {
  const factory _VideoPlayerState({required YoutubeService youtubeService}) =
      _$_VideoPlayerState;

  @override
  YoutubeService get youtubeService => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoPlayerStateCopyWith<_VideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
