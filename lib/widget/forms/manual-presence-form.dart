import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/picker/datepicker.dart';
import 'package:employee_system_prototype/widget/picker/timepicker.dart';
import 'package:flutter/material.dart';

class ManualPresenceForm extends StatefulWidget {
  const ManualPresenceForm({super.key});

  @override
  State<ManualPresenceForm> createState() => _ManualPresenceFormState();
}

class _ManualPresenceFormState extends State<ManualPresenceForm> {
  DateTime selectedDate = DateTime.now();
  late TimeOfDay timeEnter = TimeOfDay.fromDateTime(selectedDate);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          DatePicker(
            context: context,
            selectedDate: selectedDate,
            onDateChange: (value) {
              setState(() {
                selectedDate = value;
              });
            },
          ),
          TimePicker(
            time: timeEnter,
            title: "Enter Time",
            context: context,
            prefixIcon: Icons.login,
            onTimeChange: (value) {
              setState(() {
                timeEnter = value;
              });
            },
          ),
          TimePicker(
            time: timeEnter,
            title: "Exit Time",
            context: context,
            prefixIcon: Icons.logout,
            onTimeChange: (value) {},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Alasan',
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
                      maxLines: 5,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: blueberry,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
