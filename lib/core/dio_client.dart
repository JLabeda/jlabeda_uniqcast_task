import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jlabeda_uniqcast_task/auth/controllers/auth_notifier_provider.dart';
import 'package:jlabeda_uniqcast_task/auth/controllers/auth_state.dart';

final dioClientProvider = Provider<DioClient>(
  (ref) => DioClient(
    ref.watch(authNotifierProvider),
  ),
);

class DioClient {
  DioClient(
    this._authState,
  ) {
    _dio.options = BaseOptions(
      baseUrl: 'https://office-new-dev.uniqcast.com:12611/api/client/',
      validateStatus: (int? status) {
        if ([200, 201, 401].contains(status)) {
          return true;
        } else {
          return false;
        }
      },
      headers: {
        'Authorization': 'Bearer ${_authState.authData?.accesToken}',
      },
    );
  }

  final Dio _dio = Dio();
  final AuthState _authState;
  Dio get dio => _dio;
}
