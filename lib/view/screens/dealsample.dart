import 'package:flutter/material.dart';

class DealScreen extends StatefulWidget {
  const DealScreen({super.key});

  @override
  State<DealScreen> createState() => _DealScreenState();
}

class _DealScreenState extends State<DealScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                ))
          ],
        ),
      ],
    );
  }
}
