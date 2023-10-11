import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(fit: StackFit.expand, children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: SizedBox(
                    width: 290,
                    height: 290,
                    child: Image(
                      image: const AssetImage('assets/images/loginpageimg.jpg'),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'Enter valid email id as abc@gmail.com',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          style: TextStyle(fontFamily: 'Poppins-Regular'),
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter secure password',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot password",
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Poppins-Regular',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110,
                          height: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF5529A4)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Login",
                              style: TextStyle(fontFamily: 'Poppins-Regular'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        print("clicked");
                      },
                      icon: Image.asset('assets/images/google_icon.png'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "New User? Create Account",
                        style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'Poppins-Regular',
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
