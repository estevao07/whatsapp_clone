import 'package:flutter/material.dart';
import 'package:flutter_wpp/Screens/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: false,
          fontFamily: "OpenSans",
          primaryColor: const Color(0xFF075E54),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFF128C7E))),
      home: const LoginScreen(),
    );
  }
}
