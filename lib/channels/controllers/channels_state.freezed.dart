// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channels_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelsState _$ChannelsStateFromJson(Map<String, dynamic> json) {
  return _ChannelsState.fromJson(json);
}

/// @nodoc
mixin _$ChannelsState {
  List<Channel> get channels => throw _privateConstructorUsedError;
  String? get operatorId => throw _privateConstructorUsedError;
  UCTaskException? get exception => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelsStateCopyWith<ChannelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelsStateCopyWith<$Res> {
  factory $ChannelsStateCopyWith(
          ChannelsState value, $Res Function(ChannelsState) then) =
      _$ChannelsStateCopyWithImpl<$Res, ChannelsState>;
  @useResult
  $Res call(
      {List<Channel> channels, String? operatorId, UCTaskException? exception});

  $UCTaskExceptionCopyWith<$Res>? get exception;
}

/// @nodoc
class _$ChannelsStateCopyWithImpl<$Res, $Val extends ChannelsState>
    implements $ChannelsStateCopyWith<$Res> {
  _$ChannelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
    Object? operatorId = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      operatorId: freezed == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as UCTaskException?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UCTaskExceptionCopyWith<$Res>? get exception {
    if (_value.exception == null) {
      return null;
    }

    return $UCTaskExceptionCopyWith<$Res>(_value.exception!, (value) {
      return _then(_value.copyWith(exception: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelsStateImplCopyWith<$Res>
    implements $ChannelsStateCopyWith<$Res> {
  factory _$$ChannelsStateImplCopyWith(
          _$ChannelsStateImpl value, $Res Function(_$ChannelsStateImpl) then) =
      __$$ChannelsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Channel> channels, String? operatorId, UCTaskException? exception});

  @override
  $UCTaskExceptionCopyWith<$Res>? get exception;
}

/// @nodoc
class __$$ChannelsStateImplCopyWithImpl<$Res>
    extends _$ChannelsStateCopyWithImpl<$Res, _$ChannelsStateImpl>
    implements _$$ChannelsStateImplCopyWith<$Res> {
  __$$ChannelsStateImplCopyWithImpl(
      _$ChannelsStateImpl _value, $Res Function(_$ChannelsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
    Object? operatorId = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$ChannelsStateImpl(
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      operatorId: freezed == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as UCTaskException?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelsStateImpl implements _ChannelsState {
  const _$ChannelsStateImpl(
      {required final List<Channel> channels, this.operatorId, this.exception})
      : _channels = channels;

  factory _$ChannelsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelsStateImplFromJson(json);

  final List<Channel> _channels;
  @override
  List<Channel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  final String? operatorId;
  @override
  final UCTaskException? exception;

  @override
  String toString() {
    return 'ChannelsState(channels: $channels, operatorId: $operatorId, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelsStateImpl &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            (identical(other.operatorId, operatorId) ||
                other.operatorId == operatorId) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_channels), operatorId, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelsStateImplCopyWith<_$ChannelsStateImpl> get copyWith =>
      __$$ChannelsStateImplCopyWithImpl<_$ChannelsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelsStateImplToJson(
      this,
    );
  }
}

abstract class _ChannelsState implements ChannelsState {
  const factory _ChannelsState(
      {required final List<Channel> channels,
      final String? operatorId,
      final UCTaskException? exception}) = _$ChannelsStateImpl;

  factory _ChannelsState.fromJson(Map<String, dynamic> json) =
      _$ChannelsStateImpl.fromJson;

  @override
  List<Channel> get channels;
  @override
  String? get operatorId;
  @override
  UCTaskException? get exception;
  @override
  @JsonKey(ignore: true)
  _$$ChannelsStateImplCopyWith<_$ChannelsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
