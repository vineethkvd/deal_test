import 'package:deal_test/view/screens/nofificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:deal_test/view/screens/dealsample.dart';
import 'package:deal_test/view/screens/screen2.dart';
import 'package:deal_test/view/screens/screen3.dart';
import 'package:deal_test/view/screens/settingspage.dart';

import 'cartscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSelectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    DealHomeScreen(),
    NotificationScreen(),
    SettingsPage(),
    ShoppingCart(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      drawer: Drawer(),
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.brown,
        currentIndex: _currentSelectedIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fire_extinguisher_sharp),
            label: "Deals",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
