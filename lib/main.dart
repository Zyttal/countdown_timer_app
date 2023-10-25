import 'package:countdown_timer_app/pages/homepage.dart';
import 'package:countdown_timer_app/timer_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(const MainApp());
// }

void main() => runApp(ChangeNotifierProvider(
      create: (context) => TimerModel(),
      child: const MainApp(),
    ));

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countdown Timer Application',
      home: CountdownTimerDemo(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
    );
  }
}
