import 'package:employee_system_prototype/routes/app-router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Employee System',
      theme: ThemeData(useMaterial3: true, fontFamily: 'Inter'),
      routerConfig: AppRouter.getRoutes("/main/approval/sick/add-edit"),
      // routerConfig: AppRouter.getRoutes("/test"),
      builder: EasyLoading.init(),
    );
  }
}
