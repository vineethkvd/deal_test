import 'package:deal_test/view/screens/homepage.dart';
import 'package:deal_test/view/screens/loginhome.dart';
import 'package:deal_test/view/screens/loginpage.dart';
import 'package:deal_test/view/screens/news_service.dart';
import 'package:deal_test/view/screens/settingspage.dart';
import 'package:deal_test/view/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SplashScreen(),
        '/loginhome': (context) => const LoginHome(),
        '/settingspage': (context) => const SettingsPage(),
        '/homepage': (context) => const  HomePage(),
        '/loginpage': (context) => const LoginPage(),
      },
      initialRoute: '/loginpage',
    );
  }
}