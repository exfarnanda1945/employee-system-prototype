import 'package:employee_system_prototype/widget/cards/counter-card.dart';
import 'package:flutter/material.dart';

class ApprovalCounterCard extends StatelessWidget {
  const ApprovalCounterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CounterCard(
              borderColor: Color(0XFF3085fe),
              backgroundColor: Color(0XFFf5f9ff),
              counterColor: Color(0XFF3085fe),
              titleCard: "Total",
              counter: 20,
            ),
            CounterCard(
                borderColor: Color(0XFFa3d139),
                backgroundColor: Color(0XFFfafdf5),
                counterColor: Color(0XFFa3d139),
                titleCard: "Approved",
                counter: 5),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CounterCard(
                borderColor: Color(0XFF2cafa7),
                backgroundColor: Color(0XFFf5fcfb),
                counterColor: Color(0XFF2cafa7),
                titleCard: "Pending",
                counter: 3),
            CounterCard(
                borderColor: Color(0XFFff7f74),
                backgroundColor: Color(0XFFfff9f8),
                counterColor: Color(0XFFff7f74),
                titleCard: "Cancelled",
                counter: 1)
          ],
        )
      ],
    );
  }
}
