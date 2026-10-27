import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  void _showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Simple Dialog'),
        content: Text('This is a beutiful dialog message!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Close',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showMyDialog(context),
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
