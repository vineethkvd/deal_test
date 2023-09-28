import 'package:deal_test/view/screens/screen1.dart';
import 'package:deal_test/view/screens/screen2.dart';
import 'package:deal_test/view/screens/screen3.dart';
import 'package:deal_test/view/screens/settingspage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSelectedIndex = 0;
  static const List<Widget> _pages = <Widget>[Screen1(),Screen2(),SettingsPage(),Screen3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: Drawer(),
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.brown,
          currentIndex: _currentSelectedIndex,
          onTap: (value) {
            setState(() {
              _currentSelectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.fire_extinguisher_sharp), label: "Deals"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active), label: "Notifications"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "Account"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Cart")
          ]),
    );
  }
}
