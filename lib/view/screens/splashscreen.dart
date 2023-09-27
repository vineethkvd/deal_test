import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      // Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  void dispose() {
    // Clean up resources here if necessary
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFF5529A4),
          ),
          const Column(
            children: [
              Expanded(
                flex: 8,
                child: Row(
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
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFF8940E)),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
