import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlabeda_uniqcast_task/auth/model/uc_auth_data.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(UCAuthData data) = _Authenticated;
  const factory AuthState.error() = _Error;
}
