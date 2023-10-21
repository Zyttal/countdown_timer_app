import 'package:flutter/material.dart';
import 'dart:async';

class TimerModel extends ChangeNotifier {
  Timer? countdownTimer;
  Duration myDuration = const Duration(days: 5);
  String strDigits(int n) => n.toString().padLeft(2, '0');

  String get days => strDigits(myDuration.inDays);
  String get hours => strDigits(myDuration.inHours.remainder(24));
  String get minutes => strDigits(myDuration.inMinutes.remainder(60));
  String get seconds => strDigits(myDuration.inSeconds.remainder(60));

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
    notifyListeners();
  }

  void stopTimer() {
    countdownTimer!.cancel();
    notifyListeners();
  }

  void resetTimer() {
    stopTimer();
    myDuration = const Duration(days: 5);
    notifyListeners();
  }

  void setCountDown() {
    const reduceSecondsBy = 1;

    final seconds = myDuration.inSeconds - reduceSecondsBy;

    if (seconds < 0) {
      countdownTimer!.cancel();
    } else {
      myDuration = Duration(seconds: seconds);
    }

    notifyListeners();
  }
}
