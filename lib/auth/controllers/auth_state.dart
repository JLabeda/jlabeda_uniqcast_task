import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlabeda_uniqcast_task/auth/model/uc_auth_data.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(UCAuthData data) = _Authenticated;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(UCTaskException exception) = _Error;
}

extension AuthStateEx on AuthState {
  UCAuthData? get authData => mapOrNull(authenticated: (value) => value.data);
}
