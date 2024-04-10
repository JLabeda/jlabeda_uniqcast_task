// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uc_auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UCAuthData _$UCAuthDataFromJson(Map<String, dynamic> json) {
  return _UCAuthData.fromJson(json);
}

/// @nodoc
mixin _$UCAuthData {
  @JsonKey(name: 'access_token')
  String get accesToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'operator_uid')
  String get operatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UCAuthDataCopyWith<UCAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UCAuthDataCopyWith<$Res> {
  factory $UCAuthDataCopyWith(
          UCAuthData value, $Res Function(UCAuthData) then) =
      _$UCAuthDataCopyWithImpl<$Res, UCAuthData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accesToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'operator_uid') String operatorId,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$UCAuthDataCopyWithImpl<$Res, $Val extends UCAuthData>
    implements $UCAuthDataCopyWith<$Res> {
  _$UCAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accesToken = null,
    Object? refreshToken = null,
    Object? operatorId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      accesToken: null == accesToken
          ? _value.accesToken
          : accesToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UCAuthDataImplCopyWith<$Res>
    implements $UCAuthDataCopyWith<$Res> {
  factory _$$UCAuthDataImplCopyWith(
          _$UCAuthDataImpl value, $Res Function(_$UCAuthDataImpl) then) =
      __$$UCAuthDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accesToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'operator_uid') String operatorId,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$UCAuthDataImplCopyWithImpl<$Res>
    extends _$UCAuthDataCopyWithImpl<$Res, _$UCAuthDataImpl>
    implements _$$UCAuthDataImplCopyWith<$Res> {
  __$$UCAuthDataImplCopyWithImpl(
      _$UCAuthDataImpl _value, $Res Function(_$UCAuthDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accesToken = null,
    Object? refreshToken = null,
    Object? operatorId = null,
    Object? userId = null,
  }) {
    return _then(_$UCAuthDataImpl(
      accesToken: null == accesToken
          ? _value.accesToken
          : accesToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UCAuthDataImpl implements _UCAuthData {
  const _$UCAuthDataImpl(
      {@JsonKey(name: 'access_token') required this.accesToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'operator_uid') required this.operatorId,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$UCAuthDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UCAuthDataImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accesToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'operator_uid')
  final String operatorId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'UCAuthData(accesToken: $accesToken, refreshToken: $refreshToken, operatorId: $operatorId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UCAuthDataImpl &&
            (identical(other.accesToken, accesToken) ||
                other.accesToken == accesToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.operatorId, operatorId) ||
                other.operatorId == operatorId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accesToken, refreshToken, operatorId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UCAuthDataImplCopyWith<_$UCAuthDataImpl> get copyWith =>
      __$$UCAuthDataImplCopyWithImpl<_$UCAuthDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UCAuthDataImplToJson(
      this,
    );
  }
}

abstract class _UCAuthData implements UCAuthData {
  const factory _UCAuthData(
      {@JsonKey(name: 'access_token') required final String accesToken,
      @JsonKey(name: 'refresh_token') required final String refreshToken,
      @JsonKey(name: 'operator_uid') required final String operatorId,
      @JsonKey(name: 'user_id') required final int userId}) = _$UCAuthDataImpl;

  factory _UCAuthData.fromJson(Map<String, dynamic> json) =
      _$UCAuthDataImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accesToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'operator_uid')
  String get operatorId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$UCAuthDataImplCopyWith<_$UCAuthDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
