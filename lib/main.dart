import 'package:employee_system_prototype/routes/app-router.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Employee System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith((state) {
            if (state.contains(MaterialState.selected)) {
              return const TextStyle(color: hanBlue);
            }
            return null;
          }),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          elevation: 100,
        ),
      ),
      routerConfig: AppRouter.getRoutes("/main"),
    );
  }
}
