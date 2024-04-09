import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:jlabeda_uniqcast_task/auth/interface/auth_interface.dart';
import 'package:jlabeda_uniqcast_task/auth/model/uc_auth_data.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';

class AuthService implements AuthInterface {
  AuthService();

  final dio = Dio();

  static const _loginUrl =
      'https://office-new-dev.uniqcast.com:12611/api/client/v2/global/login';
  static const _userId = 'flutter_test_device_jan_labeda';

  @override
  Future<Either<UCTaskException, UCAuthData>> login({
    required String userName,
    required String password,
  }) async {
    try {
      final response = await dio.post<Map<String, dynamic>>(
        _loginUrl,
        data: {
          'login_type': 'Credentials',
          'device': _userId,
          'username': userName,
          'password': password,
        },
      );
      print(response);
      return right(
        UCAuthData.fromJson(response.data?['data'] as Map<String, dynamic>),
      );
    } catch (e) {
      log('AuthService login() exception: $e');
      return left(const UCTaskException.auth());
    }
  }
}
