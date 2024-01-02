// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function(int index) newPage,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function(int index)? newPage,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function(int index)? newPage,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_NewPage value) newPage,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_NewPage value)? newPage,
    TResult? Function(_Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_NewPage value)? newPage,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordStateCopyWith<$Res> {
  factory $WordStateCopyWith(WordState value, $Res Function(WordState) then) =
      _$WordStateCopyWithImpl<$Res, WordState>;
}

/// @nodoc
class _$WordStateCopyWithImpl<$Res, $Val extends WordState>
    implements $WordStateCopyWith<$Res> {
  _$WordStateCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_Initial(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'WordState.initial(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function(int index) newPage,
    required TResult Function() finished,
  }) {
    return initial(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function(int index)? newPage,
    TResult? Function()? finished,
  }) {
    return initial?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function(int index)? newPage,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_NewPage value) newPage,
    required TResult Function(_Finished value) finished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_NewPage value)? newPage,
    TResult? Function(_Finished value)? finished,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_NewPage value)? newPage,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WordState {
  const factory _Initial(final int index) = _$_Initial;

  int get index;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WordState.loading()';
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
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function(int index) newPage,
    required TResult Function() finished,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function(int index)? newPage,
    TResult? Function()? finished,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function(int index)? newPage,
    TResult Function()? finished,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_NewPage value) newPage,
    required TResult Function(_Finished value) finished,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_NewPage value)? newPage,
    TResult? Function(_Finished value)? finished,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_NewPage value)? newPage,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WordState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'WordState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function(int index) newPage,
    required TResult Function() finished,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function(int index)? newPage,
    TResult? Function()? finished,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function(int index)? newPage,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_NewPage value) newPage,
    required TResult Function(_Finished value) finished,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_NewPage value)? newPage,
    TResult? Function(_Finished value)? finished,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_NewPage value)? newPage,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WordState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'WordState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function(int index) newPage,
    required TResult Function() finished,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function(int index)? newPage,
    TResult? Function()? finished,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function(int index)? newPage,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_NewPage value) newPage,
    required TResult Function(_Finished value) finished,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_NewPage value)? newPage,
    TResult? Function(_Finished value)? finished,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_NewPage value)? newPage,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements WordState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_NewPageCopyWith<$Res> {
  factory _$$_NewPageCopyWith(
          _$_NewPage value, $Res Function(_$_NewPage) then) =
      __$$_NewPageCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_NewPageCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$_NewPage>
    implements _$$_NewPageCopyWith<$Res> {
  __$$_NewPageCopyWithImpl(_$_NewPage _value, $Res Function(_$_NewPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_NewPage(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NewPage implements _NewPage {
  const _$_NewPage(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'WordState.newPage(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPage &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPageCopyWith<_$_NewPage> get copyWith =>
      __$$_NewPageCopyWithImpl<_$_NewPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function(int index) newPage,
    required TResult Function() finished,
  }) {
    return newPage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function(int index)? newPage,
    TResult? Function()? finished,
  }) {
    return newPage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function(int index)? newPage,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (newPage != null) {
      return newPage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_NewPage value) newPage,
    required TResult Function(_Finished value) finished,
  }) {
    return newPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_NewPage value)? newPage,
    TResult? Function(_Finished value)? finished,
  }) {
    return newPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_NewPage value)? newPage,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (newPage != null) {
      return newPage(this);
    }
    return orElse();
  }
}

abstract class _NewPage implements WordState {
  const factory _NewPage(final int index) = _$_NewPage;

  int get index;
  @JsonKey(ignore: true)
  _$$_NewPageCopyWith<_$_NewPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishedCopyWith<$Res> {
  factory _$$_FinishedCopyWith(
          _$_Finished value, $Res Function(_$_Finished) then) =
      __$$_FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FinishedCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$_Finished>
    implements _$$_FinishedCopyWith<$Res> {
  __$$_FinishedCopyWithImpl(
      _$_Finished _value, $Res Function(_$_Finished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Finished implements _Finished {
  const _$_Finished();

  @override
  String toString() {
    return 'WordState.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function(int index) newPage,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function(int index)? newPage,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function(int index)? newPage,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_NewPage value) newPage,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_NewPage value)? newPage,
    TResult? Function(_Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_NewPage value)? newPage,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements WordState {
  const factory _Finished() = _$_Finished;
}
