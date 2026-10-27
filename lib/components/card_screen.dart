import 'package:flutter/material.dart';
import 'package:theme_app/constant/app_color.dart';
import '../constants/app_color.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Screen')),
      body: Center(
        child: Card(
          color: AppColors.secondaryColor.withOpacity(0.2),
          elevation: 5,
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'This is a simple card!',
              style: TextStyle(
                fontSize: AppTextSize.body,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
