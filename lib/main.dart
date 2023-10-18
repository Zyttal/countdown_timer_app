import 'package:countdown_timer_app/homepage.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countdown Timer Application',
      home: CountdownTimerDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
