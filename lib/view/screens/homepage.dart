import 'package:deal_test/view/screens/nofificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:deal_test/view/screens/dealsample.dart';
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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("My App"),
        actions: [
          Image(
            image: AssetImage('assets/images/search.png'),
            width: 20,
            height: 35,
          ),
          SizedBox(
            width: 25,
          ),
          Image(
            image: AssetImage('assets/images/marker.png'),
            width: 20,
            height: 35,
          ),
          SizedBox(
            width: 25,
          ),
          Image(
            image: AssetImage('assets/images/shopping-cart.png'),
            width: 20,
            height: 35,
          ),
          SizedBox(
            width: 26,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
              ),
            )),
            ListTile(
                title: Text("Name"),
                leading: Icon(Icons.account_circle_rounded)),
            ListTile(title: Text("Email"), leading: Icon(Icons.email_outlined)),
            ListTile(title: Text("Settings"), leading: Icon(Icons.settings)),
            ListTile(title: Text("Logout"), leading: Icon(Icons.logout_rounded))
          ],
        ),
      ),
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontFamily: 'Poppins-Regular'),
        unselectedItemColor: Colors.black,
        currentIndex: _currentSelectedIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Image(width: 30,height:30,image: AssetImage('assets/images/deal.png')),
            label: "Deals",
          ),
          BottomNavigationBarItem(
            icon: Image(width: 20,height:20,image: AssetImage('assets/images/bell.png')),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Image(width: 20,height:20,image: AssetImage('assets/images/user.png')),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Image(width: 20,height:20,image: AssetImage('assets/images/settings.png')),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
