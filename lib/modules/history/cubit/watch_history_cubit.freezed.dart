// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'watch_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WatchHistoryStateTearOff {
  const _$WatchHistoryStateTearOff();

  _WatchHistoryState call(
      {required bool isLoading, required List<WatchHistoryModel> playlist}) {
    return _WatchHistoryState(
      isLoading: isLoading,
      playlist: playlist,
    );
  }
}

/// @nodoc
const $WatchHistoryState = _$WatchHistoryStateTearOff();

/// @nodoc
mixin _$WatchHistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<WatchHistoryModel> get playlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchHistoryStateCopyWith<WatchHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchHistoryStateCopyWith<$Res> {
  factory $WatchHistoryStateCopyWith(
          WatchHistoryState value, $Res Function(WatchHistoryState) then) =
      _$WatchHistoryStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<WatchHistoryModel> playlist});
}

/// @nodoc
class _$WatchHistoryStateCopyWithImpl<$Res>
    implements $WatchHistoryStateCopyWith<$Res> {
  _$WatchHistoryStateCopyWithImpl(this._value, this._then);

  final WatchHistoryState _value;
  // ignore: unused_field
  final $Res Function(WatchHistoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? playlist = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<WatchHistoryModel>,
    ));
  }
}

/// @nodoc
abstract class _$WatchHistoryStateCopyWith<$Res>
    implements $WatchHistoryStateCopyWith<$Res> {
  factory _$WatchHistoryStateCopyWith(
          _WatchHistoryState value, $Res Function(_WatchHistoryState) then) =
      __$WatchHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<WatchHistoryModel> playlist});
}

/// @nodoc
class __$WatchHistoryStateCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements _$WatchHistoryStateCopyWith<$Res> {
  __$WatchHistoryStateCopyWithImpl(
      _WatchHistoryState _value, $Res Function(_WatchHistoryState) _then)
      : super(_value, (v) => _then(v as _WatchHistoryState));

  @override
  _WatchHistoryState get _value => super._value as _WatchHistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? playlist = freezed,
  }) {
    return _then(_WatchHistoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<WatchHistoryModel>,
    ));
  }
}

/// @nodoc

class _$_WatchHistoryState implements _WatchHistoryState {
  const _$_WatchHistoryState({required this.isLoading, required this.playlist});

  @override
  final bool isLoading;
  @override
  final List<WatchHistoryModel> playlist;

  @override
  String toString() {
    return 'WatchHistoryState(isLoading: $isLoading, playlist: $playlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchHistoryState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(playlist);

  @JsonKey(ignore: true)
  @override
  _$WatchHistoryStateCopyWith<_WatchHistoryState> get copyWith =>
      __$WatchHistoryStateCopyWithImpl<_WatchHistoryState>(this, _$identity);
}

abstract class _WatchHistoryState implements WatchHistoryState {
  const factory _WatchHistoryState(
      {required bool isLoading,
      required List<WatchHistoryModel> playlist}) = _$_WatchHistoryState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<WatchHistoryModel> get playlist => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WatchHistoryStateCopyWith<_WatchHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
