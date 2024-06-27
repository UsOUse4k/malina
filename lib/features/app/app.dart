import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malina/core/constants/app_colors.dart';
import 'package:malina/core/di/injection.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: AppColors.background,
      ),
      routerConfig: getIt<GoRouter>(),
    );
  }
}
