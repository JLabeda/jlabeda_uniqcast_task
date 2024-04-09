part of 'package:jlabeda_uniqcast_task/main.dart';

/// App router
final _goRouter = GoRouter(
  routes: [
    GoRoute(
      name: Routes.auth.name,
      path: Routes.auth.path,
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      name: Routes.channels.name,
      path: Routes.channels.path,
      builder: (context, state) => const ChannelsPage(),
    ),
  ],
);

/// Routes enum used for deifining of app routes.
/// Each route has path & name later used in GoRouter
enum Routes {
  auth(path: '/', name: 'auth'),
  channels(path: '/channels', name: 'channels');

  const Routes({required this.name, required this.path});
  final String name;
  final String path;
}
