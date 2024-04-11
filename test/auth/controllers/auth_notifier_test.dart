import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jlabeda_uniqcast_task/auth/controllers/auth_notifier.dart';
import 'package:jlabeda_uniqcast_task/auth/controllers/auth_state.dart';
import 'package:jlabeda_uniqcast_task/auth/interface/auth_interface.dart';
import 'package:jlabeda_uniqcast_task/auth/model/uc_auth_data.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthInterface extends Mock implements AuthInterface {}

void main() {
  late AuthNotifier notifier;
  late MockAuthInterface mockService;

  setUp(() {
    mockService = MockAuthInterface();
    notifier = AuthNotifier(mockService);
  });

  test('AuthNotifier reset() should reset AuthState', () {
    notifier.reset();
    expect(notifier.getState(), equals(const AuthState.initial()));
  });

  test(
      'AuthNotifier login() should set state to Authenticated, when provided valid credentials ',
      () async {
    const mockResponse = UCAuthData(
      accesToken: 'accesToken',
      refreshToken: 'refreshToken',
      operatorId: '1',
      userId: 1,
    );
    when(() => mockService.login(userName: 'flutter_test', password: '1111'))
        .thenAnswer((_) async => right(mockResponse));
    await notifier.login(userName: 'flutter_test', password: '1111');
    expect(notifier.getState(), const AuthState.authenticated(mockResponse));
  });

  test(
      'AuthNotifier login() should set state to Error, when provided invalid credentials',
      () async {
    const mockResponse = UCTaskException.auth();
    when(() => mockService.login(userName: 'wrong', password: 'credentials'))
        .thenAnswer((_) async => left(mockResponse));
    await notifier.login(userName: 'wrong', password: 'credentials');
    expect(
      notifier.getState(),
      equals(const AuthState.error(UCTaskException.auth())),
    );
  });
}
