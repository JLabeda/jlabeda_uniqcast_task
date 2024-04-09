// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'uc_auth_data.freezed.dart';
part 'uc_auth_data.g.dart';

@freezed
class UCAuthData with _$UCAuthData {
  const factory UCAuthData({
    @JsonKey(name: 'access_token') required String accesToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _UCAuthData;

  factory UCAuthData.fromJson(Map<String, dynamic> json) =>
      _$UCAuthDataFromJson(json);
}
