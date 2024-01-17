import 'package:employee_system_prototype/routes/main-router.dart';
import 'package:employee_system_prototype/screens/auth/login-screen.dart';
import 'package:employee_system_prototype/screens/auth/signup-screen.dart';
import 'package:employee_system_prototype/screens/landing-page/landing-page-screen.dart';
import 'package:employee_system_prototype/screens/main/main-screen.dart';
import 'package:employee_system_prototype/screens/test.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter getRoutes(String initialRoute) => GoRouter(
          initialLocation: initialRoute,
          debugLogDiagnostics: true,
          routes: [
            GoRoute(
              path: "/landing-page",
              name: "landing-page",
              builder: (context, state) {
                return const LandingPageScreen();
              },
            ),
            GoRoute(
              path: "/signin",
              name: "signin",
              builder: (context, state) {
                return const LoginScreen();
              },
            ),
            GoRoute(
              path: "/signup",
              name: "signup",
              builder: (context, state) {
                return const SignUpScreen();
              },
            ),
            GoRoute(
                path: "/main",
                name: "main",
                builder: (context, state) {
                  return const MainScreen();
                },
                routes: mainRouter),
            GoRoute(
              path: "/test",
              name: "test",
              builder: (context, state) {
                return const TestScreen();
              },
            ),
          ]);
}
