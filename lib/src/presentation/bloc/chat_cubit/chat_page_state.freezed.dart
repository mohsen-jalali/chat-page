// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendMessageState {
  MessageEntity get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageEntity message) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageEntity message)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageEntity message)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SentMessageState value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SentMessageState value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SentMessageState value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SendMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendMessageStateCopyWith<SendMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageStateCopyWith<$Res> {
  factory $SendMessageStateCopyWith(
          SendMessageState value, $Res Function(SendMessageState) then) =
      _$SendMessageStateCopyWithImpl<$Res, SendMessageState>;
  @useResult
  $Res call({MessageEntity message});
}

/// @nodoc
class _$SendMessageStateCopyWithImpl<$Res, $Val extends SendMessageState>
    implements $SendMessageStateCopyWith<$Res> {
  _$SendMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentMessageStateImplCopyWith<$Res>
    implements $SendMessageStateCopyWith<$Res> {
  factory _$$SentMessageStateImplCopyWith(_$SentMessageStateImpl value,
          $Res Function(_$SentMessageStateImpl) then) =
      __$$SentMessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageEntity message});
}

/// @nodoc
class __$$SentMessageStateImplCopyWithImpl<$Res>
    extends _$SendMessageStateCopyWithImpl<$Res, _$SentMessageStateImpl>
    implements _$$SentMessageStateImplCopyWith<$Res> {
  __$$SentMessageStateImplCopyWithImpl(_$SentMessageStateImpl _value,
      $Res Function(_$SentMessageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SentMessageStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ));
  }
}

/// @nodoc

class _$SentMessageStateImpl implements SentMessageState {
  const _$SentMessageStateImpl(this.message);

  @override
  final MessageEntity message;

  @override
  String toString() {
    return 'SendMessageState.send(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentMessageStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SendMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentMessageStateImplCopyWith<_$SentMessageStateImpl> get copyWith =>
      __$$SentMessageStateImplCopyWithImpl<_$SentMessageStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageEntity message) send,
  }) {
    return send(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageEntity message)? send,
  }) {
    return send?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageEntity message)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SentMessageState value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SentMessageState value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SentMessageState value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class SentMessageState implements SendMessageState {
  const factory SentMessageState(final MessageEntity message) =
      _$SentMessageStateImpl;

  @override
  MessageEntity get message;

  /// Create a copy of SendMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentMessageStateImplCopyWith<_$SentMessageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SwitchTimerMessageState {
  bool get isTimerOn => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTimerOn) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isTimerOn)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTimerOn)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchedTimerMessageState value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwitchedTimerMessageState value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchedTimerMessageState value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SwitchTimerMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwitchTimerMessageStateCopyWith<SwitchTimerMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchTimerMessageStateCopyWith<$Res> {
  factory $SwitchTimerMessageStateCopyWith(SwitchTimerMessageState value,
          $Res Function(SwitchTimerMessageState) then) =
      _$SwitchTimerMessageStateCopyWithImpl<$Res, SwitchTimerMessageState>;
  @useResult
  $Res call({bool isTimerOn});
}

/// @nodoc
class _$SwitchTimerMessageStateCopyWithImpl<$Res,
        $Val extends SwitchTimerMessageState>
    implements $SwitchTimerMessageStateCopyWith<$Res> {
  _$SwitchTimerMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwitchTimerMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTimerOn = null,
  }) {
    return _then(_value.copyWith(
      isTimerOn: null == isTimerOn
          ? _value.isTimerOn
          : isTimerOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwitchedTimerMessageStateImplCopyWith<$Res>
    implements $SwitchTimerMessageStateCopyWith<$Res> {
  factory _$$SwitchedTimerMessageStateImplCopyWith(
          _$SwitchedTimerMessageStateImpl value,
          $Res Function(_$SwitchedTimerMessageStateImpl) then) =
      __$$SwitchedTimerMessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTimerOn});
}

/// @nodoc
class __$$SwitchedTimerMessageStateImplCopyWithImpl<$Res>
    extends _$SwitchTimerMessageStateCopyWithImpl<$Res,
        _$SwitchedTimerMessageStateImpl>
    implements _$$SwitchedTimerMessageStateImplCopyWith<$Res> {
  __$$SwitchedTimerMessageStateImplCopyWithImpl(
      _$SwitchedTimerMessageStateImpl _value,
      $Res Function(_$SwitchedTimerMessageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwitchTimerMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTimerOn = null,
  }) {
    return _then(_$SwitchedTimerMessageStateImpl(
      null == isTimerOn
          ? _value.isTimerOn
          : isTimerOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SwitchedTimerMessageStateImpl implements SwitchedTimerMessageState {
  const _$SwitchedTimerMessageStateImpl(this.isTimerOn);

  @override
  final bool isTimerOn;

  @override
  String toString() {
    return 'SwitchTimerMessageState.send(isTimerOn: $isTimerOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchedTimerMessageStateImpl &&
            (identical(other.isTimerOn, isTimerOn) ||
                other.isTimerOn == isTimerOn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTimerOn);

  /// Create a copy of SwitchTimerMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchedTimerMessageStateImplCopyWith<_$SwitchedTimerMessageStateImpl>
      get copyWith => __$$SwitchedTimerMessageStateImplCopyWithImpl<
          _$SwitchedTimerMessageStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTimerOn) send,
  }) {
    return send(isTimerOn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isTimerOn)? send,
  }) {
    return send?.call(isTimerOn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTimerOn)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(isTimerOn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchedTimerMessageState value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwitchedTimerMessageState value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchedTimerMessageState value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class SwitchedTimerMessageState implements SwitchTimerMessageState {
  const factory SwitchedTimerMessageState(final bool isTimerOn) =
      _$SwitchedTimerMessageStateImpl;

  @override
  bool get isTimerOn;

  /// Create a copy of SwitchTimerMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchedTimerMessageStateImplCopyWith<_$SwitchedTimerMessageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteMessageState {
  int get messageIndex => throw _privateConstructorUsedError;
  MessageEntity get message => throw _privateConstructorUsedError;
  bool get isManualRemove => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int messageIndex, MessageEntity message, bool isManualRemove)
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int messageIndex, MessageEntity message, bool isManualRemove)?
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int messageIndex, MessageEntity message, bool isManualRemove)?
        delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeletedMessageState value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeletedMessageState value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeletedMessageState value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeleteMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteMessageStateCopyWith<DeleteMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMessageStateCopyWith<$Res> {
  factory $DeleteMessageStateCopyWith(
          DeleteMessageState value, $Res Function(DeleteMessageState) then) =
      _$DeleteMessageStateCopyWithImpl<$Res, DeleteMessageState>;
  @useResult
  $Res call({int messageIndex, MessageEntity message, bool isManualRemove});
}

/// @nodoc
class _$DeleteMessageStateCopyWithImpl<$Res, $Val extends DeleteMessageState>
    implements $DeleteMessageStateCopyWith<$Res> {
  _$DeleteMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageIndex = null,
    Object? message = null,
    Object? isManualRemove = null,
  }) {
    return _then(_value.copyWith(
      messageIndex: null == messageIndex
          ? _value.messageIndex
          : messageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
      isManualRemove: null == isManualRemove
          ? _value.isManualRemove
          : isManualRemove // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeletedMessageStateImplCopyWith<$Res>
    implements $DeleteMessageStateCopyWith<$Res> {
  factory _$$DeletedMessageStateImplCopyWith(_$DeletedMessageStateImpl value,
          $Res Function(_$DeletedMessageStateImpl) then) =
      __$$DeletedMessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int messageIndex, MessageEntity message, bool isManualRemove});
}

/// @nodoc
class __$$DeletedMessageStateImplCopyWithImpl<$Res>
    extends _$DeleteMessageStateCopyWithImpl<$Res, _$DeletedMessageStateImpl>
    implements _$$DeletedMessageStateImplCopyWith<$Res> {
  __$$DeletedMessageStateImplCopyWithImpl(_$DeletedMessageStateImpl _value,
      $Res Function(_$DeletedMessageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteMessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageIndex = null,
    Object? message = null,
    Object? isManualRemove = null,
  }) {
    return _then(_$DeletedMessageStateImpl(
      null == messageIndex
          ? _value.messageIndex
          : messageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
      null == isManualRemove
          ? _value.isManualRemove
          : isManualRemove // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DeletedMessageStateImpl implements DeletedMessageState {
  const _$DeletedMessageStateImpl(
      this.messageIndex, this.message, this.isManualRemove);

  @override
  final int messageIndex;
  @override
  final MessageEntity message;
  @override
  final bool isManualRemove;

  @override
  String toString() {
    return 'DeleteMessageState.delete(messageIndex: $messageIndex, message: $message, isManualRemove: $isManualRemove)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedMessageStateImpl &&
            (identical(other.messageIndex, messageIndex) ||
                other.messageIndex == messageIndex) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isManualRemove, isManualRemove) ||
                other.isManualRemove == isManualRemove));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messageIndex, message, isManualRemove);

  /// Create a copy of DeleteMessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedMessageStateImplCopyWith<_$DeletedMessageStateImpl> get copyWith =>
      __$$DeletedMessageStateImplCopyWithImpl<_$DeletedMessageStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int messageIndex, MessageEntity message, bool isManualRemove)
        delete,
  }) {
    return delete(messageIndex, message, isManualRemove);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int messageIndex, MessageEntity message, bool isManualRemove)?
        delete,
  }) {
    return delete?.call(messageIndex, message, isManualRemove);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int messageIndex, MessageEntity message, bool isManualRemove)?
        delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(messageIndex, message, isManualRemove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeletedMessageState value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeletedMessageState value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeletedMessageState value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeletedMessageState implements DeleteMessageState {
  const factory DeletedMessageState(
      final int messageIndex,
      final MessageEntity message,
      final bool isManualRemove) = _$DeletedMessageStateImpl;

  @override
  int get messageIndex;
  @override
  MessageEntity get message;
  @override
  bool get isManualRemove;

  /// Create a copy of DeleteMessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedMessageStateImplCopyWith<_$DeletedMessageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SwitchUsersState {
  UserEntity get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchedUsersState value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwitchedUsersState value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchedUsersState value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SwitchUsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwitchUsersStateCopyWith<SwitchUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchUsersStateCopyWith<$Res> {
  factory $SwitchUsersStateCopyWith(
          SwitchUsersState value, $Res Function(SwitchUsersState) then) =
      _$SwitchUsersStateCopyWithImpl<$Res, SwitchUsersState>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$SwitchUsersStateCopyWithImpl<$Res, $Val extends SwitchUsersState>
    implements $SwitchUsersStateCopyWith<$Res> {
  _$SwitchUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwitchUsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  /// Create a copy of SwitchUsersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SwitchedUsersStateImplCopyWith<$Res>
    implements $SwitchUsersStateCopyWith<$Res> {
  factory _$$SwitchedUsersStateImplCopyWith(_$SwitchedUsersStateImpl value,
          $Res Function(_$SwitchedUsersStateImpl) then) =
      __$$SwitchedUsersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$SwitchedUsersStateImplCopyWithImpl<$Res>
    extends _$SwitchUsersStateCopyWithImpl<$Res, _$SwitchedUsersStateImpl>
    implements _$$SwitchedUsersStateImplCopyWith<$Res> {
  __$$SwitchedUsersStateImplCopyWithImpl(_$SwitchedUsersStateImpl _value,
      $Res Function(_$SwitchedUsersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwitchUsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SwitchedUsersStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$SwitchedUsersStateImpl implements SwitchedUsersState {
  const _$SwitchedUsersStateImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'SwitchUsersState.change(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchedUsersStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of SwitchUsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchedUsersStateImplCopyWith<_$SwitchedUsersStateImpl> get copyWith =>
      __$$SwitchedUsersStateImplCopyWithImpl<_$SwitchedUsersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) change,
  }) {
    return change(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? change,
  }) {
    return change?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchedUsersState value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwitchedUsersState value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchedUsersState value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class SwitchedUsersState implements SwitchUsersState {
  const factory SwitchedUsersState(final UserEntity user) =
      _$SwitchedUsersStateImpl;

  @override
  UserEntity get user;

  /// Create a copy of SwitchUsersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchedUsersStateImplCopyWith<_$SwitchedUsersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
