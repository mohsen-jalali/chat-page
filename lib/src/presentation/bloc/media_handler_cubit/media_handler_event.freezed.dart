// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_handler_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectImageEvent {
  XFile get media => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile media) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile media)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile media)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedImageEvent value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedImageEvent value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedImageEvent value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SelectImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectImageEventCopyWith<SelectImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectImageEventCopyWith<$Res> {
  factory $SelectImageEventCopyWith(
          SelectImageEvent value, $Res Function(SelectImageEvent) then) =
      _$SelectImageEventCopyWithImpl<$Res, SelectImageEvent>;
  @useResult
  $Res call({XFile media});
}

/// @nodoc
class _$SelectImageEventCopyWithImpl<$Res, $Val extends SelectImageEvent>
    implements $SelectImageEventCopyWith<$Res> {
  _$SelectImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as XFile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedImageEventImplCopyWith<$Res>
    implements $SelectImageEventCopyWith<$Res> {
  factory _$$SelectedImageEventImplCopyWith(_$SelectedImageEventImpl value,
          $Res Function(_$SelectedImageEventImpl) then) =
      __$$SelectedImageEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({XFile media});
}

/// @nodoc
class __$$SelectedImageEventImplCopyWithImpl<$Res>
    extends _$SelectImageEventCopyWithImpl<$Res, _$SelectedImageEventImpl>
    implements _$$SelectedImageEventImplCopyWith<$Res> {
  __$$SelectedImageEventImplCopyWithImpl(_$SelectedImageEventImpl _value,
      $Res Function(_$SelectedImageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$SelectedImageEventImpl(
      null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$SelectedImageEventImpl implements SelectedImageEvent {
  const _$SelectedImageEventImpl(this.media);

  @override
  final XFile media;

  @override
  String toString() {
    return 'SelectImageEvent.selected(media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImageEventImpl &&
            (identical(other.media, media) || other.media == media));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media);

  /// Create a copy of SelectImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImageEventImplCopyWith<_$SelectedImageEventImpl> get copyWith =>
      __$$SelectedImageEventImplCopyWithImpl<_$SelectedImageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile media) selected,
  }) {
    return selected(media);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile media)? selected,
  }) {
    return selected?.call(media);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile media)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(media);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedImageEvent value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedImageEvent value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedImageEvent value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class SelectedImageEvent implements SelectImageEvent {
  const factory SelectedImageEvent(final XFile media) =
      _$SelectedImageEventImpl;

  @override
  XFile get media;

  /// Create a copy of SelectImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedImageEventImplCopyWith<_$SelectedImageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
