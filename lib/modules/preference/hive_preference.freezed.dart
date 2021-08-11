// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hive_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HivePreference _$HivePreferenceFromJson(Map<String, dynamic> json) {
  return _HivePreference.fromJson(json);
}

/// @nodoc
class _$HivePreferenceTearOff {
  const _$HivePreferenceTearOff();

  _HivePreference call(
      {@HiveField(0) bool? isSeeded, @HiveField(1) bool? isFirstTime}) {
    return _HivePreference(
      isSeeded: isSeeded,
      isFirstTime: isFirstTime,
    );
  }

  HivePreference fromJson(Map<String, Object> json) {
    return HivePreference.fromJson(json);
  }
}

/// @nodoc
const $HivePreference = _$HivePreferenceTearOff();

/// @nodoc
mixin _$HivePreference {
  @HiveField(0)
  bool? get isSeeded => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get isFirstTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HivePreferenceCopyWith<HivePreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HivePreferenceCopyWith<$Res> {
  factory $HivePreferenceCopyWith(
          HivePreference value, $Res Function(HivePreference) then) =
      _$HivePreferenceCopyWithImpl<$Res>;
  $Res call({@HiveField(0) bool? isSeeded, @HiveField(1) bool? isFirstTime});
}

/// @nodoc
class _$HivePreferenceCopyWithImpl<$Res>
    implements $HivePreferenceCopyWith<$Res> {
  _$HivePreferenceCopyWithImpl(this._value, this._then);

  final HivePreference _value;
  // ignore: unused_field
  final $Res Function(HivePreference) _then;

  @override
  $Res call({
    Object? isSeeded = freezed,
    Object? isFirstTime = freezed,
  }) {
    return _then(_value.copyWith(
      isSeeded: isSeeded == freezed
          ? _value.isSeeded
          : isSeeded // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFirstTime: isFirstTime == freezed
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$HivePreferenceCopyWith<$Res>
    implements $HivePreferenceCopyWith<$Res> {
  factory _$HivePreferenceCopyWith(
          _HivePreference value, $Res Function(_HivePreference) then) =
      __$HivePreferenceCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) bool? isSeeded, @HiveField(1) bool? isFirstTime});
}

/// @nodoc
class __$HivePreferenceCopyWithImpl<$Res>
    extends _$HivePreferenceCopyWithImpl<$Res>
    implements _$HivePreferenceCopyWith<$Res> {
  __$HivePreferenceCopyWithImpl(
      _HivePreference _value, $Res Function(_HivePreference) _then)
      : super(_value, (v) => _then(v as _HivePreference));

  @override
  _HivePreference get _value => super._value as _HivePreference;

  @override
  $Res call({
    Object? isSeeded = freezed,
    Object? isFirstTime = freezed,
  }) {
    return _then(_HivePreference(
      isSeeded: isSeeded == freezed
          ? _value.isSeeded
          : isSeeded // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFirstTime: isFirstTime == freezed
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4, adapterName: 'HivePreferenceAdapter')
class _$_HivePreference implements _HivePreference {
  const _$_HivePreference(
      {@HiveField(0) this.isSeeded, @HiveField(1) this.isFirstTime});

  factory _$_HivePreference.fromJson(Map<String, dynamic> json) =>
      _$_$_HivePreferenceFromJson(json);

  @override
  @HiveField(0)
  final bool? isSeeded;
  @override
  @HiveField(1)
  final bool? isFirstTime;

  @override
  String toString() {
    return 'HivePreference(isSeeded: $isSeeded, isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HivePreference &&
            (identical(other.isSeeded, isSeeded) ||
                const DeepCollectionEquality()
                    .equals(other.isSeeded, isSeeded)) &&
            (identical(other.isFirstTime, isFirstTime) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstTime, isFirstTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSeeded) ^
      const DeepCollectionEquality().hash(isFirstTime);

  @JsonKey(ignore: true)
  @override
  _$HivePreferenceCopyWith<_HivePreference> get copyWith =>
      __$HivePreferenceCopyWithImpl<_HivePreference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HivePreferenceToJson(this);
  }
}

abstract class _HivePreference implements HivePreference {
  const factory _HivePreference(
      {@HiveField(0) bool? isSeeded,
      @HiveField(1) bool? isFirstTime}) = _$_HivePreference;

  factory _HivePreference.fromJson(Map<String, dynamic> json) =
      _$_HivePreference.fromJson;

  @override
  @HiveField(0)
  bool? get isSeeded => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  bool? get isFirstTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HivePreferenceCopyWith<_HivePreference> get copyWith =>
      throw _privateConstructorUsedError;
}
