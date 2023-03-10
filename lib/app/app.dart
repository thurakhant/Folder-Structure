import 'package:flutter/material.dart';

import '../presentation/home/home_screen/home.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThuraKhantThein',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
