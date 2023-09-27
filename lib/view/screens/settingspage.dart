import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          child: Card(
            child: const ListTile(
              leading: Icon(Icons.account_circle, size: 36),
              title: Text('Account'),
            ),
          ),
        ),
        SizedBox(
          child: Card(
            child: const ListTile(
              leading: Icon(Icons.privacy_tip_outlined, size: 36),
              title: Text('Sonu Nigam'),
            ),
          ),
        ),
        SizedBox(
          child: Card(
            child: const ListTile(
              leading: Icon(Icons.notifications, size: 36),
              title: Text('Notification'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ),
        ),
        SizedBox(
          child: Card(
            child: const ListTile(
              leading: Icon(Icons.dark_mode, size: 36),
              title: Text('Darl/light'),
            ),
          ),
        ),
        SizedBox(
          child: Card(
            child: const ListTile(
              leading: Icon(Icons.language, size: 36),
              title: Text('Language'),
            ),
          ),
        ),
        SizedBox(
          child: Card(
            child: const ListTile(
              leading: Icon(Icons.album, size: 36),
              title: Text('Sonu Nigam'),
            ),
          ),
        ),
        SizedBox(
          child: Card(
            child: const ListTile(
              leading: Icon(Icons.password, size: 34),
              title: Text('Change password'),
            ),
          ),
        ),
        SizedBox(
          child: Card(
            child: const ListTile(
              leading: Icon(Icons.delete, size: 36),
              title: Text('Delete account'),
            ),
          ),
        ),
      ]),
    );
  }
}
