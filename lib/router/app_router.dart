import 'package:go_router/go_router.dart';
import 'package:next_class/screen/auth/login_screen.dart';

import '../screen/auth/register_screen/register_screen.dart';
import 'app_routes.dart';

class AppRouter {
  AppRouter._();

  static final goRouter = GoRouter(
    initialLocation: AppRoutes.LoginScreen.path,
    routes: [
      

      GoRoute(path: AppRoutes.LoginScreen.path, builder: (context, state) => LoginScreen()),
      GoRoute(path: AppRoutes.RegisterScreen.path, builder: (context, state) => RegisterScreen()),
    ],
  );
}
