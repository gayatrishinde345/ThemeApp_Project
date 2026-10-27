import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  @override
  _DatePickerScreenState createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime? selectedDate;

  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DatePicker Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate == null
                  ? 'No date selected'
                  : 'Selected Date: ${selectedDate!.toLocal()}'.split(' ')[0],
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _pickDate, child: Text('Pick a Date')),
          ],
        ),
      ),
    );
  }
}
