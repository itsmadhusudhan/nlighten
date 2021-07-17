// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

  _CategoryStateInitial initial() {
    return _CategoryStateInitial();
  }

  _CategoryStateLoading loading() {
    return _CategoryStateLoading();
  }

  _CategoryStateError error({required String message}) {
    return _CategoryStateError(
      message: message,
    );
  }

  _CategoryStateSuccess success(List<CategoryModel> data) {
    return _CategoryStateSuccess(
      data,
    );
  }
}

/// @nodoc
const $CategoryState = _$CategoryStateTearOff();

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryStateInitial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_CategoryStateError value) error,
    required TResult Function(_CategoryStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryStateInitial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_CategoryStateError value)? error,
    TResult Function(_CategoryStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;
}

/// @nodoc
abstract class _$CategoryStateInitialCopyWith<$Res> {
  factory _$CategoryStateInitialCopyWith(_CategoryStateInitial value,
          $Res Function(_CategoryStateInitial) then) =
      __$CategoryStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CategoryStateInitialCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateInitialCopyWith<$Res> {
  __$CategoryStateInitialCopyWithImpl(
      _CategoryStateInitial _value, $Res Function(_CategoryStateInitial) _then)
      : super(_value, (v) => _then(v as _CategoryStateInitial));

  @override
  _CategoryStateInitial get _value => super._value as _CategoryStateInitial;
}

/// @nodoc

class _$_CategoryStateInitial implements _CategoryStateInitial {
  _$_CategoryStateInitial();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CategoryStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> data)? success,
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
    required TResult Function(_CategoryStateInitial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_CategoryStateError value) error,
    required TResult Function(_CategoryStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryStateInitial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_CategoryStateError value)? error,
    TResult Function(_CategoryStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CategoryStateInitial implements CategoryState {
  factory _CategoryStateInitial() = _$_CategoryStateInitial;
}

/// @nodoc
abstract class _$CategoryStateLoadingCopyWith<$Res> {
  factory _$CategoryStateLoadingCopyWith(_CategoryStateLoading value,
          $Res Function(_CategoryStateLoading) then) =
      __$CategoryStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CategoryStateLoadingCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateLoadingCopyWith<$Res> {
  __$CategoryStateLoadingCopyWithImpl(
      _CategoryStateLoading _value, $Res Function(_CategoryStateLoading) _then)
      : super(_value, (v) => _then(v as _CategoryStateLoading));

  @override
  _CategoryStateLoading get _value => super._value as _CategoryStateLoading;
}

/// @nodoc

class _$_CategoryStateLoading implements _CategoryStateLoading {
  _$_CategoryStateLoading();

  @override
  String toString() {
    return 'CategoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CategoryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> data)? success,
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
    required TResult Function(_CategoryStateInitial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_CategoryStateError value) error,
    required TResult Function(_CategoryStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryStateInitial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_CategoryStateError value)? error,
    TResult Function(_CategoryStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CategoryStateLoading implements CategoryState {
  factory _CategoryStateLoading() = _$_CategoryStateLoading;
}

/// @nodoc
abstract class _$CategoryStateErrorCopyWith<$Res> {
  factory _$CategoryStateErrorCopyWith(
          _CategoryStateError value, $Res Function(_CategoryStateError) then) =
      __$CategoryStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$CategoryStateErrorCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateErrorCopyWith<$Res> {
  __$CategoryStateErrorCopyWithImpl(
      _CategoryStateError _value, $Res Function(_CategoryStateError) _then)
      : super(_value, (v) => _then(v as _CategoryStateError));

  @override
  _CategoryStateError get _value => super._value as _CategoryStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_CategoryStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryStateError implements _CategoryStateError {
  _$_CategoryStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CategoryState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$CategoryStateErrorCopyWith<_CategoryStateError> get copyWith =>
      __$CategoryStateErrorCopyWithImpl<_CategoryStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> data) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> data)? success,
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
    required TResult Function(_CategoryStateInitial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_CategoryStateError value) error,
    required TResult Function(_CategoryStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryStateInitial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_CategoryStateError value)? error,
    TResult Function(_CategoryStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CategoryStateError implements CategoryState {
  factory _CategoryStateError({required String message}) =
      _$_CategoryStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CategoryStateErrorCopyWith<_CategoryStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CategoryStateSuccessCopyWith<$Res> {
  factory _$CategoryStateSuccessCopyWith(_CategoryStateSuccess value,
          $Res Function(_CategoryStateSuccess) then) =
      __$CategoryStateSuccessCopyWithImpl<$Res>;
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class __$CategoryStateSuccessCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateSuccessCopyWith<$Res> {
  __$CategoryStateSuccessCopyWithImpl(
      _CategoryStateSuccess _value, $Res Function(_CategoryStateSuccess) _then)
      : super(_value, (v) => _then(v as _CategoryStateSuccess));

  @override
  _CategoryStateSuccess get _value => super._value as _CategoryStateSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_CategoryStateSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$_CategoryStateSuccess implements _CategoryStateSuccess {
  _$_CategoryStateSuccess(this.data);

  @override
  final List<CategoryModel> data;

  @override
  String toString() {
    return 'CategoryState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryStateSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CategoryStateSuccessCopyWith<_CategoryStateSuccess> get copyWith =>
      __$CategoryStateSuccessCopyWithImpl<_CategoryStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryStateInitial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_CategoryStateError value) error,
    required TResult Function(_CategoryStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryStateInitial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_CategoryStateError value)? error,
    TResult Function(_CategoryStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CategoryStateSuccess implements CategoryState {
  factory _CategoryStateSuccess(List<CategoryModel> data) =
      _$_CategoryStateSuccess;

  List<CategoryModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CategoryStateSuccessCopyWith<_CategoryStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
