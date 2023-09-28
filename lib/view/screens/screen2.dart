import 'package:flutter/material.dart';
class Screen2 extends StatefulWidget {
  const Screen2 ({super.key});

  @override
  State<Screen2> createState() => _Screen1State();
}

class _Screen1State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("screen2"),);
  }
}
