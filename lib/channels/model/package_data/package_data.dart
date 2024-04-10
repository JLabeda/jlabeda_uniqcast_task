// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlabeda_uniqcast_task/core/date_converter.dart';

part 'package_data.freezed.dart';
part 'package_data.g.dart';

@freezed
class PackageData with _$PackageData {
  const factory PackageData({
    required int id,
    @DateConverter() @JsonKey(name: 'purchased') DateTime? purchased,
  }) = _PackageData;

  factory PackageData.fromJson(Map<String, dynamic> json) =>
      _$PackageDataFromJson(json);
}
