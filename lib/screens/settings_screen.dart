import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme.dart';
import '../theme_notifier.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Theme:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.brightness_5, color: Colors.blue),
              title: const Text('Theme A (Light Blue)'),
              onTap: () {
                themeNotifier.changeTheme(AppThemes.themeA);
              },
            ),
            ListTile(
              leading: const Icon(Icons.brightness_3, color: Colors.grey),
              title: const Text('Theme B (Dark Mode)'),
              onTap: () {
                themeNotifier.changeTheme(AppThemes.themeB);
              },
            ),
            ListTile(
              leading: const Icon(Icons.brightness_6, color: Colors.green),
              title: const Text('Theme C (Light Green)'),
              onTap: () {
                themeNotifier.changeTheme(AppThemes.themeC);
              },
            ),
            const SizedBox(height: 20),
            const Divider(),
            const Text(
              'Preferences:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: const Text('Receive Notifications'),
              value: true,
              onChanged: (value) {},
            ),
            SwitchListTile(
              title: const Text('Play in Background'),
              value: false,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
