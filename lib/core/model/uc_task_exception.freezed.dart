// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uc_task_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UCTaskException _$UCTaskExceptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'auth':
      return _Auth.fromJson(json);
    case 'channels':
      return _Channels.fromJson(json);
    case 'customMessage':
      return _CustomMessage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UCTaskException',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UCTaskException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) channels,
    required TResult Function(String message) customMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? channels,
    TResult? Function(String message)? customMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? channels,
    TResult Function(String message)? customMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Channels value) channels,
    required TResult Function(_CustomMessage value) customMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Channels value)? channels,
    TResult? Function(_CustomMessage value)? customMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Channels value)? channels,
    TResult Function(_CustomMessage value)? customMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UCTaskExceptionCopyWith<UCTaskException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UCTaskExceptionCopyWith<$Res> {
  factory $UCTaskExceptionCopyWith(
          UCTaskException value, $Res Function(UCTaskException) then) =
      _$UCTaskExceptionCopyWithImpl<$Res, UCTaskException>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UCTaskExceptionCopyWithImpl<$Res, $Val extends UCTaskException>
    implements $UCTaskExceptionCopyWith<$Res> {
  _$UCTaskExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthImplCopyWith<$Res>
    implements $UCTaskExceptionCopyWith<$Res> {
  factory _$$AuthImplCopyWith(
          _$AuthImpl value, $Res Function(_$AuthImpl) then) =
      __$$AuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthImplCopyWithImpl<$Res>
    extends _$UCTaskExceptionCopyWithImpl<$Res, _$AuthImpl>
    implements _$$AuthImplCopyWith<$Res> {
  __$$AuthImplCopyWithImpl(_$AuthImpl _value, $Res Function(_$AuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthImpl implements _Auth {
  const _$AuthImpl(
      [this.message =
          'Problem with authentication service. Please try again later, or contact support.',
      final String? $type])
      : $type = $type ?? 'auth';

  factory _$AuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UCTaskException.auth(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      __$$AuthImplCopyWithImpl<_$AuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) channels,
    required TResult Function(String message) customMessage,
  }) {
    return auth(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? channels,
    TResult? Function(String message)? customMessage,
  }) {
    return auth?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? channels,
    TResult Function(String message)? customMessage,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Channels value) channels,
    required TResult Function(_CustomMessage value) customMessage,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Channels value)? channels,
    TResult? Function(_CustomMessage value)? customMessage,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Channels value)? channels,
    TResult Function(_CustomMessage value)? customMessage,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthImplToJson(
      this,
    );
  }
}

abstract class _Auth implements UCTaskException {
  const factory _Auth([final String message]) = _$AuthImpl;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$AuthImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChannelsImplCopyWith<$Res>
    implements $UCTaskExceptionCopyWith<$Res> {
  factory _$$ChannelsImplCopyWith(
          _$ChannelsImpl value, $Res Function(_$ChannelsImpl) then) =
      __$$ChannelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ChannelsImplCopyWithImpl<$Res>
    extends _$UCTaskExceptionCopyWithImpl<$Res, _$ChannelsImpl>
    implements _$$ChannelsImplCopyWith<$Res> {
  __$$ChannelsImplCopyWithImpl(
      _$ChannelsImpl _value, $Res Function(_$ChannelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChannelsImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelsImpl implements _Channels {
  const _$ChannelsImpl(
      [this.message =
          'Problem with authentication service. Please try again later, or contact support.',
      final String? $type])
      : $type = $type ?? 'channels';

  factory _$ChannelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelsImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UCTaskException.channels(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelsImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelsImplCopyWith<_$ChannelsImpl> get copyWith =>
      __$$ChannelsImplCopyWithImpl<_$ChannelsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) channels,
    required TResult Function(String message) customMessage,
  }) {
    return channels(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? channels,
    TResult? Function(String message)? customMessage,
  }) {
    return channels?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? channels,
    TResult Function(String message)? customMessage,
    required TResult orElse(),
  }) {
    if (channels != null) {
      return channels(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Channels value) channels,
    required TResult Function(_CustomMessage value) customMessage,
  }) {
    return channels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Channels value)? channels,
    TResult? Function(_CustomMessage value)? customMessage,
  }) {
    return channels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Channels value)? channels,
    TResult Function(_CustomMessage value)? customMessage,
    required TResult orElse(),
  }) {
    if (channels != null) {
      return channels(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelsImplToJson(
      this,
    );
  }
}

abstract class _Channels implements UCTaskException {
  const factory _Channels([final String message]) = _$ChannelsImpl;

  factory _Channels.fromJson(Map<String, dynamic> json) =
      _$ChannelsImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ChannelsImplCopyWith<_$ChannelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomMessageImplCopyWith<$Res>
    implements $UCTaskExceptionCopyWith<$Res> {
  factory _$$CustomMessageImplCopyWith(
          _$CustomMessageImpl value, $Res Function(_$CustomMessageImpl) then) =
      __$$CustomMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CustomMessageImplCopyWithImpl<$Res>
    extends _$UCTaskExceptionCopyWithImpl<$Res, _$CustomMessageImpl>
    implements _$$CustomMessageImplCopyWith<$Res> {
  __$$CustomMessageImplCopyWithImpl(
      _$CustomMessageImpl _value, $Res Function(_$CustomMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CustomMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomMessageImpl implements _CustomMessage {
  const _$CustomMessageImpl({required this.message, final String? $type})
      : $type = $type ?? 'customMessage';

  factory _$CustomMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomMessageImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UCTaskException.customMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomMessageImplCopyWith<_$CustomMessageImpl> get copyWith =>
      __$$CustomMessageImplCopyWithImpl<_$CustomMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) channels,
    required TResult Function(String message) customMessage,
  }) {
    return customMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? channels,
    TResult? Function(String message)? customMessage,
  }) {
    return customMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? channels,
    TResult Function(String message)? customMessage,
    required TResult orElse(),
  }) {
    if (customMessage != null) {
      return customMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Channels value) channels,
    required TResult Function(_CustomMessage value) customMessage,
  }) {
    return customMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Channels value)? channels,
    TResult? Function(_CustomMessage value)? customMessage,
  }) {
    return customMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Channels value)? channels,
    TResult Function(_CustomMessage value)? customMessage,
    required TResult orElse(),
  }) {
    if (customMessage != null) {
      return customMessage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomMessageImplToJson(
      this,
    );
  }
}

abstract class _CustomMessage implements UCTaskException {
  const factory _CustomMessage({required final String message}) =
      _$CustomMessageImpl;

  factory _CustomMessage.fromJson(Map<String, dynamic> json) =
      _$CustomMessageImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CustomMessageImplCopyWith<_$CustomMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
