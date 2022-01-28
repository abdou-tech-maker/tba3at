import 'package:flutter/material.dart';
import 'package:store/Views/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MaterialColor kPrimaryColor = const MaterialColor(
    0xFF0E7AC7,
    const <int, Color>{
      50: const Color(0xFF0E7AC7),
      100: const Color(0xFF0E7AC7),
      200: const Color(0xFF0E7AC7),
      300: const Color(0xFF0E7AC7),
      400: const Color(0xFF0E7AC7),
      500: const Color(0xFF0E7AC7),
      600: const Color(0xFF0E7AC7),
      700: const Color(0xFF0E7AC7),
      800: const Color(0xFF0E7AC7),
      900: const Color(0xFF0E7AC7),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Tba3at ',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: Login(),
    );
  }
}
