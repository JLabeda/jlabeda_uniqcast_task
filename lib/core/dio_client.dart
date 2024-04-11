import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          debugPrint(
            'Dio Interceptor: Old token - ${_authState.authData?.accesToken}',
          );
          if (error.response?.statusCode == 401) {
            final newToken = await _refreshToken();
            debugPrint('[Dio Interceptor: New token - $newToken]');
            error.requestOptions.headers['Authorization'] = 'Bearer $newToken';
            return handler.resolve(await dio.fetch(error.requestOptions));
          }
          return handler.next(error);
        },
      ),
    );
  }

  final Dio _dio = Dio();
  final AuthState _authState;
  Dio get dio => _dio;

  Future<String> _refreshToken() async {
    try {
      final response = await dio.post<Map<String, dynamic>>(
        'v2/global/refresh',
        data: {
          'refresh_token': _authState.authData?.refreshToken,
        },
      );
      return (response.data?['data'] as Map<String, dynamic>)['access_token']
          as String;
    } catch (e) {
      debugPrint('DioClient refreshToken() exception: $e');
      return _authState.authData?.accesToken ?? '';
    }
  }
}
