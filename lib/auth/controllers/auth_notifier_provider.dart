import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jlabeda_uniqcast_task/auth/controllers/auth_notifier.dart';
import 'package:jlabeda_uniqcast_task/auth/controllers/auth_state.dart';
import 'package:jlabeda_uniqcast_task/auth/service/auth_service.dart';

final authServiceProvider = Provider(
  (ref) => AuthService(),
  name: 'AuthServiceProvider',
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.read(authServiceProvider)),
  name: 'AuthNotifierProvider',
);
