import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/container/textformfield-container.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  const TimePicker(
      {super.key,
      required this.time,
      required this.title,
      required this.context,
      required this.onTimeChange,
      required this.prefixIcon});

  final TimeOfDay time;
  final ValueChanged<TimeOfDay> onTimeChange;
  final String title;
  final BuildContext context;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldContainer(
        titleText: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        textFormField: TextFormField(
          maxLines: 1,
          onTap: () async => callTimePicker(),
          readOnly: true,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: Icon(prefixIcon),
            hintText: time.format(context),
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
    // Padding(
    //   padding: const EdgeInsets.only(top: 16),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //  Text(
    //   title,
    //   style: const TextStyle(
    //     color: Colors.black,
    //     fontSize: 14,
    //     fontWeight: FontWeight.normal,
    //     height: 0,
    //   ),
    // ),
    //           const SizedBox(
    //             height: 12,
    //           ),
    // TextFormField(
    //   maxLines: 1,
    //   onTap: () async => callTimePicker(),
    //   readOnly: true,
    //   decoration: InputDecoration(
    //     isDense: true,
    //     prefixIcon: Icon(prefixIcon),
    //     hintText:time.format(context) ,
    //     hintStyle: const TextStyle(
    //       color: davyGrey,
    //       fontSize: 14,
    //       fontWeight: FontWeight.normal,
    //     ),
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //   ),
    // )
    //         ],
    //       ),

    //     ],
    //   ),
    // );
  }

  callTimePicker() async {
    final timeChanged = await showTimePicker(
      context: context,
      initialTime: time,
    );

    if (timeChanged != null) {
      onTimeChange(time);
    }
  }
}
