import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:jlabeda_uniqcast_task/auth/pages/auth_page.dart';
import 'package:jlabeda_uniqcast_task/channels/pages/channels_page.dart';

part 'package:jlabeda_uniqcast_task/core/go_router.dart';
part 'package:jlabeda_uniqcast_task/core/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: UniqcastTaskApp(),
    ),
  );
}

class UniqcastTaskApp extends StatelessWidget {
  const UniqcastTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: UCTheme.theme,
      routerConfig: _goRouter,
    );
  }
}
