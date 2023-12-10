import 'package:booking_uz/router/app_routes.dart';
import 'package:booking_uz/router/routes_name.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initial,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      navigatorKey: rootNavigatorKey,
    );
  }
}
