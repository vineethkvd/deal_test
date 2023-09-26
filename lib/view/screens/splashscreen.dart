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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/logo.png')),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "OFFER",
                    style: TextStyle(
                      fontFamily: 'Oswald-Bold',
                      fontSize: 40,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    "NINJA",
                    style: TextStyle(
                      fontFamily: 'Oswald-Bold',
                      fontSize: 40,
                      color: Color(0xFFF8940E),
                    ),
                  ),
                )
              ],
            ),
            const CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Color(0xFFF8940E)),
            ),
          ],
        ),
      ),
    );
  }
}
