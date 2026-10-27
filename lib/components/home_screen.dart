import 'package:flutter/material.dart';
import 'package:theme_app/components/dialogue_screen.dart';
import 'card_screen.dart';
import 'datepicker_screen.dart';
import 'dialog_screen.dart';

class HomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const HomeScreen({
    required this.isDarkMode,
    required this.onThemeChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CardScreen()),
              ),
              child: Text('Go to Card Screen'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DatePickerScreen()),
              ),
              child: Text('Go to DatePicker Screen'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DialogScreen()),
              ),
              child: Text('Go to Dialog Screen'),
            ),
            SizedBox(height: 32),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: isDarkMode,
              onChanged: onThemeChanged,
            ),
          ],
        ),
      ),
    );
  }
}
