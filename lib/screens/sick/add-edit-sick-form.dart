import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/picker/datepicker.dart';
import 'package:employee_system_prototype/widget/picker/filepicker.dart';
import 'package:flutter/material.dart';

class AddEditSickForm extends StatefulWidget {
  const AddEditSickForm({super.key});

  @override
  State<AddEditSickForm> createState() => _AddEditSickFormState();
}

class _AddEditSickFormState extends State<AddEditSickForm> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Approval Type',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    height: 0,
                  ),
                ),
              ),
              TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.expand_more),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          DatePicker(
            title: "Start Date",
            context: context,
            selectedDate: startDate,
            onDateChange: (value) {
              setState(() {
                startDate = value;
              });
            },
          ),
          const SizedBox(
            height: 16,
          ),
          DatePicker(
            title: "End Date",
            context: context,
            selectedDate: endDate,
            onDateChange: (value) {
              setState(() {
                endDate = value;
              });
            },
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
            height: 18,
          ),
          FilePicker(),
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
