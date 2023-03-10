import 'package:flutter/material.dart';
import 'package:structure/presentation/home/home_screen/home.dart';
import 'package:structure/resources/string_manager.dart';

class AppRoute {
  static const String home = '/home';
}

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoute.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Error404Route());
    }
  }
}

class Error404Route extends StatelessWidget {
  const Error404Route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(RouteText.errorTitle), centerTitle: true, elevation: 0.0),
      body: const Center(
        child: Text(RouteText.pageNotFound),
      ),
    );
  }
}
