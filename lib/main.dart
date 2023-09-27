import 'package:deal_test/view/screens/loginhome.dart';
import 'package:deal_test/view/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SplashScreen(),
        '/loginhome': (context) => const LoginHome(),
      },
      initialRoute: '/loginhome',
    );
  }
}
