import 'package:dartz/dartz.dart';
import 'package:jlabeda_uniqcast_task/auth/model/uc_auth_data.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';

abstract class AuthInterface {
  Future<Either<UCTaskException, UCAuthData>> login({
    required String userName,
    required String password,
  });
}
