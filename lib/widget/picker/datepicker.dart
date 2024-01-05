import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({super.key, required this.onDateChange, required this.selectedDate, required this.context});

  final ValueChanged<DateTime> onDateChange;
  final DateTime selectedDate;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pilih Tanggal',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
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
                  fontWeight: FontWeight.normal,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),

      ],
    );
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
