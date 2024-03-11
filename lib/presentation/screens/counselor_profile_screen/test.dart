import 'package:date_time_picker_widget/date_time_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Shedule extends StatefulWidget {
  const Shedule({super.key});

  @override
  _Shedule createState() => _Shedule();
}

class _Shedule extends State<Shedule> {
  String _d1 = '', _d2 = '';
  String _t1 = '', _t2 = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        _datePicker(),
        _timePicker(),
      ],
    );
  }

  Widget _datePicker() {
    return Column(
      children: [
        const SizedBox(height: 8),
        Text(
          'Date: $_d2',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
        DateTimePicker(
          type: DateTimePickerType.Date,
          onDateChanged: (date) {
            setState(() {
              _d2 = DateFormat('dd MMM, yyyy').format(date);
            });
          },
        )
      ],
    );
  }

  Widget _timePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 8),
        Text(
          'Time: $_t2',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
        DateTimePicker(
          type: DateTimePickerType.Time,
          timeInterval: const Duration(minutes: 30),
          onTimeChanged: (time) {
            setState(
              () {
                _t2 = DateFormat('hh:mm:ss aa').format(time);
              },
            );
          },
        )
      ],
    );
  }
}
