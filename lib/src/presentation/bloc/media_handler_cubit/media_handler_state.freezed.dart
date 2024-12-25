// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_handler_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadMediaState {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String id) uploading,
    required TResult Function(String id, String url) success,
    required TResult Function(String? message, String id) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String id)? uploading,
    TResult? Function(String id, String url)? success,
    TResult? Function(String? message, String id)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String id)? uploading,
    TResult Function(String id, String url)? success,
    TResult Function(String? message, String id)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadingMediaState value) uploading,
    required TResult Function(SuccessUploadState value) success,
    required TResult Function(FailedUploadState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadingMediaState value)? uploading,
    TResult? Function(SuccessUploadState value)? success,
    TResult? Function(FailedUploadState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadingMediaState value)? uploading,
    TResult Function(SuccessUploadState value)? success,
    TResult Function(FailedUploadState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadMediaStateCopyWith<UploadMediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadMediaStateCopyWith<$Res> {
  factory $UploadMediaStateCopyWith(
          UploadMediaState value, $Res Function(UploadMediaState) then) =
      _$UploadMediaStateCopyWithImpl<$Res, UploadMediaState>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$UploadMediaStateCopyWithImpl<$Res, $Val extends UploadMediaState>
    implements $UploadMediaStateCopyWith<$Res> {
  _$UploadMediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadingMediaStateImplCopyWith<$Res>
    implements $UploadMediaStateCopyWith<$Res> {
  factory _$$UploadingMediaStateImplCopyWith(_$UploadingMediaStateImpl value,
          $Res Function(_$UploadingMediaStateImpl) then) =
      __$$UploadingMediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double progress, String id});
}

/// @nodoc
class __$$UploadingMediaStateImplCopyWithImpl<$Res>
    extends _$UploadMediaStateCopyWithImpl<$Res, _$UploadingMediaStateImpl>
    implements _$$UploadingMediaStateImplCopyWith<$Res> {
  __$$UploadingMediaStateImplCopyWithImpl(_$UploadingMediaStateImpl _value,
      $Res Function(_$UploadingMediaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? id = null,
  }) {
    return _then(_$UploadingMediaStateImpl(
      null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadingMediaStateImpl implements UploadingMediaState {
  const _$UploadingMediaStateImpl(this.progress, this.id);

  @override
  final double progress;
  @override
  final String id;

  @override
  String toString() {
    return 'UploadMediaState.uploading(progress: $progress, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadingMediaStateImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, id);

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadingMediaStateImplCopyWith<_$UploadingMediaStateImpl> get copyWith =>
      __$$UploadingMediaStateImplCopyWithImpl<_$UploadingMediaStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String id) uploading,
    required TResult Function(String id, String url) success,
    required TResult Function(String? message, String id) failed,
  }) {
    return uploading(progress, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String id)? uploading,
    TResult? Function(String id, String url)? success,
    TResult? Function(String? message, String id)? failed,
  }) {
    return uploading?.call(progress, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String id)? uploading,
    TResult Function(String id, String url)? success,
    TResult Function(String? message, String id)? failed,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(progress, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadingMediaState value) uploading,
    required TResult Function(SuccessUploadState value) success,
    required TResult Function(FailedUploadState value) failed,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadingMediaState value)? uploading,
    TResult? Function(SuccessUploadState value)? success,
    TResult? Function(FailedUploadState value)? failed,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadingMediaState value)? uploading,
    TResult Function(SuccessUploadState value)? success,
    TResult Function(FailedUploadState value)? failed,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class UploadingMediaState implements UploadMediaState {
  const factory UploadingMediaState(final double progress, final String id) =
      _$UploadingMediaStateImpl;

  double get progress;
  @override
  String get id;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadingMediaStateImplCopyWith<_$UploadingMediaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUploadStateImplCopyWith<$Res>
    implements $UploadMediaStateCopyWith<$Res> {
  factory _$$SuccessUploadStateImplCopyWith(_$SuccessUploadStateImpl value,
          $Res Function(_$SuccessUploadStateImpl) then) =
      __$$SuccessUploadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$SuccessUploadStateImplCopyWithImpl<$Res>
    extends _$UploadMediaStateCopyWithImpl<$Res, _$SuccessUploadStateImpl>
    implements _$$SuccessUploadStateImplCopyWith<$Res> {
  __$$SuccessUploadStateImplCopyWithImpl(_$SuccessUploadStateImpl _value,
      $Res Function(_$SuccessUploadStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$SuccessUploadStateImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessUploadStateImpl implements SuccessUploadState {
  const _$SuccessUploadStateImpl(this.id, this.url);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'UploadMediaState.success(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUploadStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUploadStateImplCopyWith<_$SuccessUploadStateImpl> get copyWith =>
      __$$SuccessUploadStateImplCopyWithImpl<_$SuccessUploadStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String id) uploading,
    required TResult Function(String id, String url) success,
    required TResult Function(String? message, String id) failed,
  }) {
    return success(id, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String id)? uploading,
    TResult? Function(String id, String url)? success,
    TResult? Function(String? message, String id)? failed,
  }) {
    return success?.call(id, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String id)? uploading,
    TResult Function(String id, String url)? success,
    TResult Function(String? message, String id)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(id, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadingMediaState value) uploading,
    required TResult Function(SuccessUploadState value) success,
    required TResult Function(FailedUploadState value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadingMediaState value)? uploading,
    TResult? Function(SuccessUploadState value)? success,
    TResult? Function(FailedUploadState value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadingMediaState value)? uploading,
    TResult Function(SuccessUploadState value)? success,
    TResult Function(FailedUploadState value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessUploadState implements UploadMediaState {
  const factory SuccessUploadState(final String id, final String url) =
      _$SuccessUploadStateImpl;

  @override
  String get id;
  String get url;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessUploadStateImplCopyWith<_$SuccessUploadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedUploadStateImplCopyWith<$Res>
    implements $UploadMediaStateCopyWith<$Res> {
  factory _$$FailedUploadStateImplCopyWith(_$FailedUploadStateImpl value,
          $Res Function(_$FailedUploadStateImpl) then) =
      __$$FailedUploadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String id});
}

/// @nodoc
class __$$FailedUploadStateImplCopyWithImpl<$Res>
    extends _$UploadMediaStateCopyWithImpl<$Res, _$FailedUploadStateImpl>
    implements _$$FailedUploadStateImplCopyWith<$Res> {
  __$$FailedUploadStateImplCopyWithImpl(_$FailedUploadStateImpl _value,
      $Res Function(_$FailedUploadStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? id = null,
  }) {
    return _then(_$FailedUploadStateImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedUploadStateImpl implements FailedUploadState {
  const _$FailedUploadStateImpl(this.message, this.id);

  @override
  final String? message;
  @override
  final String id;

  @override
  String toString() {
    return 'UploadMediaState.failed(message: $message, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedUploadStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, id);

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedUploadStateImplCopyWith<_$FailedUploadStateImpl> get copyWith =>
      __$$FailedUploadStateImplCopyWithImpl<_$FailedUploadStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String id) uploading,
    required TResult Function(String id, String url) success,
    required TResult Function(String? message, String id) failed,
  }) {
    return failed(message, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String id)? uploading,
    TResult? Function(String id, String url)? success,
    TResult? Function(String? message, String id)? failed,
  }) {
    return failed?.call(message, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String id)? uploading,
    TResult Function(String id, String url)? success,
    TResult Function(String? message, String id)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadingMediaState value) uploading,
    required TResult Function(SuccessUploadState value) success,
    required TResult Function(FailedUploadState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadingMediaState value)? uploading,
    TResult? Function(SuccessUploadState value)? success,
    TResult? Function(FailedUploadState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadingMediaState value)? uploading,
    TResult Function(SuccessUploadState value)? success,
    TResult Function(FailedUploadState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FailedUploadState implements UploadMediaState {
  const factory FailedUploadState(final String? message, final String id) =
      _$FailedUploadStateImpl;

  String? get message;
  @override
  String get id;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedUploadStateImplCopyWith<_$FailedUploadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadMediaState {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String id) downloading,
    required TResult Function(String id) success,
    required TResult Function(String? message, String id) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String id)? downloading,
    TResult? Function(String id)? success,
    TResult? Function(String? message, String id)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String id)? downloading,
    TResult Function(String id)? success,
    TResult Function(String? message, String id)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadingMediaState value) downloading,
    required TResult Function(SuccessDownloadMediaState value) success,
    required TResult Function(FailedDownloadMediaState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadingMediaState value)? downloading,
    TResult? Function(SuccessDownloadMediaState value)? success,
    TResult? Function(FailedDownloadMediaState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadingMediaState value)? downloading,
    TResult Function(SuccessDownloadMediaState value)? success,
    TResult Function(FailedDownloadMediaState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadMediaStateCopyWith<DownloadMediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadMediaStateCopyWith<$Res> {
  factory $DownloadMediaStateCopyWith(
          DownloadMediaState value, $Res Function(DownloadMediaState) then) =
      _$DownloadMediaStateCopyWithImpl<$Res, DownloadMediaState>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DownloadMediaStateCopyWithImpl<$Res, $Val extends DownloadMediaState>
    implements $DownloadMediaStateCopyWith<$Res> {
  _$DownloadMediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadingMediaStateImplCopyWith<$Res>
    implements $DownloadMediaStateCopyWith<$Res> {
  factory _$$DownloadingMediaStateImplCopyWith(
          _$DownloadingMediaStateImpl value,
          $Res Function(_$DownloadingMediaStateImpl) then) =
      __$$DownloadingMediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double progress, String id});
}

/// @nodoc
class __$$DownloadingMediaStateImplCopyWithImpl<$Res>
    extends _$DownloadMediaStateCopyWithImpl<$Res, _$DownloadingMediaStateImpl>
    implements _$$DownloadingMediaStateImplCopyWith<$Res> {
  __$$DownloadingMediaStateImplCopyWithImpl(_$DownloadingMediaStateImpl _value,
      $Res Function(_$DownloadingMediaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? id = null,
  }) {
    return _then(_$DownloadingMediaStateImpl(
      null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadingMediaStateImpl implements DownloadingMediaState {
  const _$DownloadingMediaStateImpl(this.progress, this.id);

  @override
  final double progress;
  @override
  final String id;

  @override
  String toString() {
    return 'DownloadMediaState.downloading(progress: $progress, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadingMediaStateImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, id);

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadingMediaStateImplCopyWith<_$DownloadingMediaStateImpl>
      get copyWith => __$$DownloadingMediaStateImplCopyWithImpl<
          _$DownloadingMediaStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String id) downloading,
    required TResult Function(String id) success,
    required TResult Function(String? message, String id) failed,
  }) {
    return downloading(progress, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String id)? downloading,
    TResult? Function(String id)? success,
    TResult? Function(String? message, String id)? failed,
  }) {
    return downloading?.call(progress, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String id)? downloading,
    TResult Function(String id)? success,
    TResult Function(String? message, String id)? failed,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(progress, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadingMediaState value) downloading,
    required TResult Function(SuccessDownloadMediaState value) success,
    required TResult Function(FailedDownloadMediaState value) failed,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadingMediaState value)? downloading,
    TResult? Function(SuccessDownloadMediaState value)? success,
    TResult? Function(FailedDownloadMediaState value)? failed,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadingMediaState value)? downloading,
    TResult Function(SuccessDownloadMediaState value)? success,
    TResult Function(FailedDownloadMediaState value)? failed,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class DownloadingMediaState implements DownloadMediaState {
  const factory DownloadingMediaState(final double progress, final String id) =
      _$DownloadingMediaStateImpl;

  double get progress;
  @override
  String get id;

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadingMediaStateImplCopyWith<_$DownloadingMediaStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessDownloadMediaStateImplCopyWith<$Res>
    implements $DownloadMediaStateCopyWith<$Res> {
  factory _$$SuccessDownloadMediaStateImplCopyWith(
          _$SuccessDownloadMediaStateImpl value,
          $Res Function(_$SuccessDownloadMediaStateImpl) then) =
      __$$SuccessDownloadMediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SuccessDownloadMediaStateImplCopyWithImpl<$Res>
    extends _$DownloadMediaStateCopyWithImpl<$Res,
        _$SuccessDownloadMediaStateImpl>
    implements _$$SuccessDownloadMediaStateImplCopyWith<$Res> {
  __$$SuccessDownloadMediaStateImplCopyWithImpl(
      _$SuccessDownloadMediaStateImpl _value,
      $Res Function(_$SuccessDownloadMediaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SuccessDownloadMediaStateImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessDownloadMediaStateImpl implements SuccessDownloadMediaState {
  const _$SuccessDownloadMediaStateImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DownloadMediaState.success(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDownloadMediaStateImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDownloadMediaStateImplCopyWith<_$SuccessDownloadMediaStateImpl>
      get copyWith => __$$SuccessDownloadMediaStateImplCopyWithImpl<
          _$SuccessDownloadMediaStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String id) downloading,
    required TResult Function(String id) success,
    required TResult Function(String? message, String id) failed,
  }) {
    return success(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String id)? downloading,
    TResult? Function(String id)? success,
    TResult? Function(String? message, String id)? failed,
  }) {
    return success?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String id)? downloading,
    TResult Function(String id)? success,
    TResult Function(String? message, String id)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadingMediaState value) downloading,
    required TResult Function(SuccessDownloadMediaState value) success,
    required TResult Function(FailedDownloadMediaState value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadingMediaState value)? downloading,
    TResult? Function(SuccessDownloadMediaState value)? success,
    TResult? Function(FailedDownloadMediaState value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadingMediaState value)? downloading,
    TResult Function(SuccessDownloadMediaState value)? success,
    TResult Function(FailedDownloadMediaState value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessDownloadMediaState implements DownloadMediaState {
  const factory SuccessDownloadMediaState(final String id) =
      _$SuccessDownloadMediaStateImpl;

  @override
  String get id;

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessDownloadMediaStateImplCopyWith<_$SuccessDownloadMediaStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedDownloadMediaStateImplCopyWith<$Res>
    implements $DownloadMediaStateCopyWith<$Res> {
  factory _$$FailedDownloadMediaStateImplCopyWith(
          _$FailedDownloadMediaStateImpl value,
          $Res Function(_$FailedDownloadMediaStateImpl) then) =
      __$$FailedDownloadMediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String id});
}

/// @nodoc
class __$$FailedDownloadMediaStateImplCopyWithImpl<$Res>
    extends _$DownloadMediaStateCopyWithImpl<$Res,
        _$FailedDownloadMediaStateImpl>
    implements _$$FailedDownloadMediaStateImplCopyWith<$Res> {
  __$$FailedDownloadMediaStateImplCopyWithImpl(
      _$FailedDownloadMediaStateImpl _value,
      $Res Function(_$FailedDownloadMediaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? id = null,
  }) {
    return _then(_$FailedDownloadMediaStateImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedDownloadMediaStateImpl implements FailedDownloadMediaState {
  const _$FailedDownloadMediaStateImpl(this.message, this.id);

  @override
  final String? message;
  @override
  final String id;

  @override
  String toString() {
    return 'DownloadMediaState.failed(message: $message, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedDownloadMediaStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, id);

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedDownloadMediaStateImplCopyWith<_$FailedDownloadMediaStateImpl>
      get copyWith => __$$FailedDownloadMediaStateImplCopyWithImpl<
          _$FailedDownloadMediaStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String id) downloading,
    required TResult Function(String id) success,
    required TResult Function(String? message, String id) failed,
  }) {
    return failed(message, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String id)? downloading,
    TResult? Function(String id)? success,
    TResult? Function(String? message, String id)? failed,
  }) {
    return failed?.call(message, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String id)? downloading,
    TResult Function(String id)? success,
    TResult Function(String? message, String id)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadingMediaState value) downloading,
    required TResult Function(SuccessDownloadMediaState value) success,
    required TResult Function(FailedDownloadMediaState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadingMediaState value)? downloading,
    TResult? Function(SuccessDownloadMediaState value)? success,
    TResult? Function(FailedDownloadMediaState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadingMediaState value)? downloading,
    TResult Function(SuccessDownloadMediaState value)? success,
    TResult Function(FailedDownloadMediaState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FailedDownloadMediaState implements DownloadMediaState {
  const factory FailedDownloadMediaState(
      final String? message, final String id) = _$FailedDownloadMediaStateImpl;

  String? get message;
  @override
  String get id;

  /// Create a copy of DownloadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedDownloadMediaStateImplCopyWith<_$FailedDownloadMediaStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
