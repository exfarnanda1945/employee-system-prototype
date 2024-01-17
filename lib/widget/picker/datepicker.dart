import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/container/textformfield-container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatelessWidget {
  const DatePicker(
      {super.key,
      required this.onDateChange,
      required this.selectedDate,
      required this.context,
      required this.title});

  final ValueChanged<DateTime> onDateChange;
  final DateTime selectedDate;
  final BuildContext context;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldContainer(
        titleText: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            // fontStyle:
          ),
        ),
        textFormField: TextFormField(
          maxLines: 1,
          onTap: () async => callDatePicker(),
          readOnly: true,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: const Icon(Icons.calendar_month),
            hintText: DateFormat.yMMMEd().format(selectedDate),
            hintStyle: const TextStyle(
              color: davyGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ));
  }

  callDatePicker() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      initialDate: selectedDate,
      lastDate: DateTime(2025),
    );

    if (date != null) {
      onDateChange(date);
    }
  }
}
