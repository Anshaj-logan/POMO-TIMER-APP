import 'package:flutter/material.dart';
import 'package:promodoro_timer_app/utils.dart';

import 'package:provider/provider.dart';
import '../timer_service.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.rounds}/4",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              "${provider.goal}/12",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Round",
              style: textStyle(25, Colors.white, FontWeight.bold),
            ),
            Text(
              "Goal",
              style: textStyle(25, Colors.white, FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
