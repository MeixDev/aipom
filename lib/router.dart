import 'package:aipom/home_page.dart';
import 'package:aipom/settings.dart';
import 'package:aipom/shell.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return AipomShell(
          shellContext: _shellNavigatorKey.currentContext,
          child: child,
        );
      },
      routes: [
        /// Home
        GoRoute(path: '/', builder: (context, state) => const HomePage()),

        /// Settings
        GoRoute(
          path: '/settings',
          builder: (context, state) => const Settings(),
        ),
      ],
    ),
  ],
);
