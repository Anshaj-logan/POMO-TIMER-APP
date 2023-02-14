import 'package:flutter/material.dart';
import 'package:promodoro_timer_app/timer_service.dart';
import 'package:promodoro_timer_app/utils.dart';
import 'package:promodoro_timer_app/widget/progresswidget.dart';
import 'package:promodoro_timer_app/widget/timecontroller.dart';
import 'package:promodoro_timer_app/widget/timeoptions.dart';
import 'package:promodoro_timer_app/widget/timercard.dart';
import 'package:provider/provider.dart';

class PromoScreen extends StatelessWidget {
  const PromoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentstate),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentstate),
        title: Text(
          "POMOTIMER",
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TimerCard(),
              SizedBox(
                height: 40,
              ),
              TimeOptions(),
              SizedBox(
                height: 30,
              ),
              TimeController(),
              SizedBox(
                height: 30,
              ),
              ProgressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
