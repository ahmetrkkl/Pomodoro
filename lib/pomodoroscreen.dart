import 'package:flutter/material.dart';
import 'package:pomodoroapp/widgets/progresswidget.dart';
import 'package:pomodoroapp/widgets/timecontroller.dart';
import 'package:pomodoroapp/widgets/timeoptions.dart';
import 'package:pomodoroapp/widgets/timercard.dart';
import 'package:pomodoroapp/widgets/timeservice.dart';
import 'utils.dart';
import 'package:provider/provider.dart';

class PomodoroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          "POMODORO",
          style: textStyle(25,Colors.white,FontWeight.w700),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
        iconSize: 40,
        onPressed: () =>
            Provider.of<TimerService>(context, listen: false).reset()
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                  height: 15
              ),
              TimerCard(),
              SizedBox(
                height: 40,
              ),
              TimeOptions(),
              SizedBox(
                  height: 30
              ),
              TimeController(),
              SizedBox(
                height: 40
              ),
              ProgressWidget()
            ],
          ),
        ),
      ),
    );
  }
}
