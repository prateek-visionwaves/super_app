import 'package:go_router/go_router.dart';
import 'package:super_app/src/screens/auth_screen/auth_screen.dart';
import 'package:super_app/src/screens/home_screen/home_screen.dart';
import 'package:super_app/src/screens/mini_app_screen/mini_app_screen.dart';

import 'app_routes.dart';

class AppRouter {
  GoRouter get router => _router;
  final _router = GoRouter(routes: [
    GoRoute(
        path: AppRoutes.authScreen.path,
        name: AppRoutes.authScreen.name,
        builder: (context, state) => const MiniAppScreen()),
    GoRoute(
        path: AppRoutes.homeScreen.path,
        name: AppRoutes.homeScreen.name,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
              path: AppRoutes.miniAppScreen.path,
              name: AppRoutes.miniAppScreen.name,
              builder: (context, state) => const MiniAppScreen()),
        ])
  ]);
}
