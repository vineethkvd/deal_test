import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF5529A4),
        child: Column(
          children: [
            Row(
              children: [
                Image(image: AssetImage('assets/images/logo.png')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
