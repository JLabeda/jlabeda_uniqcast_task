import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jlabeda_uniqcast_task/auth/controllers/auth_notifier_provider.dart';
import 'package:jlabeda_uniqcast_task/core/error_popup.dart';
import 'package:jlabeda_uniqcast_task/main.dart';

class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthPage> {
  late TextEditingController userNameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authNotifierProvider, (_, next) {
      next.whenOrNull(
        authenticated: (data) {
          context.goNamed(Routes.channels.name);
        },
        error: (exception) async {
          await ErrorPopup.show(context, exception);
        },
      );
    });
    return Scaffold(
      body: Builder(
        builder: (context) {
          return ref.watch(authNotifierProvider).maybeMap(
                loading: (_) => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                orElse: () => Padding(
                  padding: MediaQuery.of(context).viewPadding +
                      const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 24,
                      ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration:
                              const InputDecoration(hintText: 'Username'),
                          controller: userNameController,
                          onTapOutside: (_) => FocusScope.of(context).unfocus(),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration:
                              const InputDecoration(hintText: 'Password'),
                          controller: passwordController,
                          onTapOutside: (_) => FocusScope.of(context).unfocus(),
                        ),
                        const SizedBox(
                          height: 64,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () =>
                                ref.read(authNotifierProvider.notifier).login(
                                      userName: userNameController.text,
                                      password: passwordController.text,
                                    ),
                            child: const Text('Login'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
        },
      ),
    );
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
