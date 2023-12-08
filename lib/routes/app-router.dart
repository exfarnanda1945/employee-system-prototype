import 'package:employee_system_prototype/screens/auth/login-screen.dart';
import 'package:employee_system_prototype/screens/auth/signup-screen.dart';
import 'package:employee_system_prototype/screens/landing_page/landing-page-screen.dart';
import 'package:employee_system_prototype/screens/main/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

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
              path: "/sign",
              name: "sign",
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
                routes: const [
                  // GoRoute(path: "/home", name: "home", routes: [
                  //   GoRoute(
                  //     path: "/attendance",
                  //     name: "attendance",
                  //   )
                  // ]),
                ]),
            // GoRoute(path: "/request", name: "request"),
            // GoRoute(path: "/account", name: 'account')
          ]);
}
