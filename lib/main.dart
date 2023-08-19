import 'package:flutter/material.dart';
import 'package:pomodoroapp/pomodoroscreen.dart';
import 'package:pomodoroapp/widgets/timeservice.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
      create: (_) => TimerService(),
      child: MyApp(),
    ));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PomodoroScreen()
    );
  }
}