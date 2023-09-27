import 'package:flutter/material.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key});

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
            width: 80,
            image: AssetImage('assets/images/applogo.png'),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/images/toppng 1.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 59),
                      child: Text(
                        "Catch all deal is \neasier with one tap",
                        style: TextStyle(
                          fontFamily: 'Oswald-Bold',
                          color: Color(0xFF4A4A5F),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 133,
                            height: 46,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Color(0xFF5529A4)),
                              ),
                              onPressed: () {},
                              child: Text("Sign In",style: TextStyle(fontFamily: 'Oswald-Bold'),),
                            ),
                          ),
                          SizedBox(width: 16),
                          SizedBox(
                            width: 133,
                            height: 46,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Color(0xFF5529A4)),
                              ),
                              onPressed: () {},
                              child: Text("Register",style: TextStyle(fontFamily: 'Oswald-Bold'),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
