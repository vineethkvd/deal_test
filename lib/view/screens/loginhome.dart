import 'package:flutter/material.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({super.key});

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leadingWidth: 130,
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  width: 8, image: AssetImage('assets/images/applogo.png')),
            )),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: Colors.white,
            ),
            Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 90),
                          child: Image(
                              image: AssetImage('assets/images/toppng 1.png')),
                        )
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "Catch all deal is easier with one tap",
                          style: TextStyle(color: Color(0xFF4A4A5F)),
                        )
                      ],
                    ))
              ],
            )
          ],
        ));
  }
}
