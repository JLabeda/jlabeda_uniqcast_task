// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageData _$PackageDataFromJson(Map<String, dynamic> json) {
  return _PackageData.fromJson(json);
}

/// @nodoc
mixin _$PackageData {
  int get id => throw _privateConstructorUsedError;
  @DateConverter()
  @JsonKey(name: 'purchased')
  DateTime? get purchased => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageDataCopyWith<PackageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageDataCopyWith<$Res> {
  factory $PackageDataCopyWith(
          PackageData value, $Res Function(PackageData) then) =
      _$PackageDataCopyWithImpl<$Res, PackageData>;
  @useResult
  $Res call(
      {int id,
      @DateConverter() @JsonKey(name: 'purchased') DateTime? purchased});
}

/// @nodoc
class _$PackageDataCopyWithImpl<$Res, $Val extends PackageData>
    implements $PackageDataCopyWith<$Res> {
  _$PackageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? purchased = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      purchased: freezed == purchased
          ? _value.purchased
          : purchased // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageDataImplCopyWith<$Res>
    implements $PackageDataCopyWith<$Res> {
  factory _$$PackageDataImplCopyWith(
          _$PackageDataImpl value, $Res Function(_$PackageDataImpl) then) =
      __$$PackageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @DateConverter() @JsonKey(name: 'purchased') DateTime? purchased});
}

/// @nodoc
class __$$PackageDataImplCopyWithImpl<$Res>
    extends _$PackageDataCopyWithImpl<$Res, _$PackageDataImpl>
    implements _$$PackageDataImplCopyWith<$Res> {
  __$$PackageDataImplCopyWithImpl(
      _$PackageDataImpl _value, $Res Function(_$PackageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? purchased = freezed,
  }) {
    return _then(_$PackageDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      purchased: freezed == purchased
          ? _value.purchased
          : purchased // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageDataImpl implements _PackageData {
  const _$PackageDataImpl(
      {required this.id,
      @DateConverter() @JsonKey(name: 'purchased') this.purchased});

  factory _$PackageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageDataImplFromJson(json);

  @override
  final int id;
  @override
  @DateConverter()
  @JsonKey(name: 'purchased')
  final DateTime? purchased;

  @override
  String toString() {
    return 'PackageData(id: $id, purchased: $purchased)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.purchased, purchased) ||
                other.purchased == purchased));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, purchased);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageDataImplCopyWith<_$PackageDataImpl> get copyWith =>
      __$$PackageDataImplCopyWithImpl<_$PackageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageDataImplToJson(
      this,
    );
  }
}

abstract class _PackageData implements PackageData {
  const factory _PackageData(
      {required final int id,
      @DateConverter()
      @JsonKey(name: 'purchased')
      final DateTime? purchased}) = _$PackageDataImpl;

  factory _PackageData.fromJson(Map<String, dynamic> json) =
      _$PackageDataImpl.fromJson;

  @override
  int get id;
  @override
  @DateConverter()
  @JsonKey(name: 'purchased')
  DateTime? get purchased;
  @override
  @JsonKey(ignore: true)
  _$$PackageDataImplCopyWith<_$PackageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
