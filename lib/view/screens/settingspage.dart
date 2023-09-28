import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitchedNotification = false;
  bool isSwitchedDarklight = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.account_circle, size: 36),
                title: Text('Account'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.privacy_tip_outlined, size: 36),
                title: Text('Sonu Nigam'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.notifications, size: 36),
                title: Text('Notification'),
                trailing: Transform.scale(
                  scale: 0.9, // Adjust the scale factor to change the switch size
                  child: Switch(
                    onChanged: (value) {
                      setState(() {
                        isSwitchedNotification = value;
                      });
                      print('Switch Button is ${isSwitchedNotification ? 'ON' : 'OFF'}');
                    },
                    value: isSwitchedNotification,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.redAccent,
                    inactiveTrackColor: Colors.orange,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.dark_mode, size: 36),
                title: Text('Dark/Light Mode'),
                trailing: Transform.scale(
                  scale: 0.9, // Adjust the scale factor to change the switch size
                  child: Switch(
                    onChanged: (value) {
                      setState(() {
                        isSwitchedDarklight = value;
                      });
                      print('Switch Button is ${isSwitchedDarklight ? 'ON' : 'OFF'}');
                    },
                    value: isSwitchedDarklight,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.redAccent,
                    inactiveTrackColor: Colors.orange,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.language, size: 36),
                title: Text('Language'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.album, size: 36),
                title: Text('Sonu Nigam'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.password, size: 34),
                title: Text('Change Password'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.delete, size: 36),
                title: Text('Delete Account'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 36,
                ),
                title: Text('Log Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
