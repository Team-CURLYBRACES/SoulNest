import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker(
    DateTime dateTime, {
    super.key,
    required DateTime initialSelectedDate,
    required Color selectionColor,
    required Color selectedTextColor,
    required Null Function(dynamic date) onDateChange,
  });

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: const Color.fromRGBO(28, 146, 202, 1),
          selectedTextColor: Colors.white,
          onDateChange: (date) {
            setState(() {});
          },
        ),
      ],
    );
  }
}
