import 'package:flutter/material.dart';
import 'dart:async';

class TimerModel extends ChangeNotifier {
  Timer? countdownTimer;
  DurationPair option1 = DurationPair(25, 5);
  DurationPair option2 = DurationPair(50, 10);
  String strDigits(int n) => n.toString().padLeft(2, '0');
  bool isWorkPhase = true;

  late DurationPair selectedDurationPair;
  late Duration selectedDuration;

  TimerModel() {
    selectedDurationPair = option1;
    selectedDuration = selectedDurationPair.getWorkDuration();
  }

  String get minutes => strDigits(selectedDuration.inMinutes.remainder(60));
  String get seconds => strDigits(selectedDuration.inSeconds.remainder(60));

  // bool phase = true;
  String phaseText = "Work Period";

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
    if (countdownTimer != null) {
      countdownTimer!.cancel();
    }
    if (isWorkPhase) {
      selectedDuration = selectedDurationPair.getWorkDuration();
    } else {
      selectedDuration = selectedDurationPair.getRestDuration();
    }
    notifyListeners();
  }

  void setCountDown() {
    const reduceSecondsBy = 1;

    final seconds = selectedDuration.inSeconds - reduceSecondsBy;

    if (seconds < 0) {
      countdownTimer!.cancel();
      if (isWorkPhase) {
        phaseText = "Rest Period";
        countdownTimer!.cancel();
        selectedDuration = selectedDurationPair.getRestDuration();
      } else {
        phaseText = "Work Period";
        countdownTimer!.cancel();
        selectedDuration = selectedDurationPair.getWorkDuration();
      }
    } else {
      selectedDuration = Duration(seconds: seconds);
    }
    notifyListeners();
  }

  void option1Select() {
    if (countdownTimer != null) {
      countdownTimer!.cancel();
    }
    selectedDurationPair = option1;
    selectedDuration = option1.getWorkDuration();
    isWorkPhase = true; // Update the phase to work
    notifyListeners();
  }

  void option2Select() {
    if (countdownTimer != null) {
      countdownTimer!.cancel();
    }
    selectedDurationPair = option2;
    selectedDuration = option2.getWorkDuration();
    isWorkPhase = true; // Update the phase to work
    notifyListeners();
  }

  void skip() {
    if (countdownTimer != null) {
      countdownTimer!.cancel();
    }
    if (isWorkPhase) {
      selectedDuration = selectedDurationPair.getRestDuration();
      isWorkPhase = false;
      phaseText = "Rest Period";
    } else {
      selectedDuration = selectedDurationPair.getWorkDuration();
      isWorkPhase = true;
      phaseText = "Work Period";
    }
    notifyListeners();
  }
}

class DurationPair {
  int workMinutes;
  int restMinutes;

  DurationPair(this.workMinutes, this.restMinutes);

  Duration getRestDuration() {
    return Duration(minutes: restMinutes);
  }

  Duration getWorkDuration() {
    return Duration(minutes: workMinutes);
  }
}
