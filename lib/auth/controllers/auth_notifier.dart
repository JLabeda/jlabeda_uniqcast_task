import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jlabeda_uniqcast_task/auth/controllers/auth_state.dart';
import 'package:jlabeda_uniqcast_task/auth/interface/auth_interface.dart';
import 'package:jlabeda_uniqcast_task/core/dartz_extension.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this.service) : super(const AuthState.initial());

  final AuthInterface service;

  Future<void> login({
    required String userName,
    required String password,
  }) async {
    debugPrint('[AuthNotifier] login()');
    state = const AuthState.loading();
    final response = await service.login(
      userName: userName,
      password: password,
    );
    if (response.isRight()) {
      state = AuthState.authenticated(response.getRightOrThrow());
    } else {
      state = AuthState.error(response.getLeftOrThrow());
    }
  }

  void reset() => state = const AuthState.initial();

  @visibleForTesting
  AuthState getState() => state;
}
