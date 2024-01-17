import 'package:employee_system_prototype/screens/sick/add-edit-sick-form.dart';
import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';

class AddEditSickScreen extends StatelessWidget {
  const AddEditSickScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Sick Approval"),
        backgroundColor: blueberry,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        child: AddEditSickForm(),
      ),
    );
  }
}
