import 'package:countdown_timer_app/timer_model.dart';
import 'package:countdown_timer_app/widgets/display_time_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CountdownTimerDemo extends StatelessWidget {
  const CountdownTimerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TimerModel>(
      builder: (context, value, child) => Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1697903859/wp4788644_iznjdm.jpg'),
                      fit: BoxFit.cover)),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 149,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(140, 30, 30, 30),
                                    maximumSize: const Size(149, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    elevation: 4),
                                onPressed: () {
                                  var startState = context.read<TimerModel>();

                                  startState.option1Select();
                                },
                                child: Text(
                                  '25 : 5',
                                  style: GoogleFonts.roboto(
                                      color: const Color.fromARGB(
                                          255, 147, 246, 226),
                                      fontSize: 25,
                                      shadows: [
                                        const Shadow(
                                          color: Color.fromARGB(64, 0, 0, 0),
                                          offset: Offset(2,
                                              2), // Shadow offset (horizontal, vertical)
                                          blurRadius: 4, // Shadow blur radius
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 35,
                            ),
                            SizedBox(
                              width: 149,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(140, 30, 30, 30),
                                    maximumSize: const Size(149, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    elevation: 4),
                                onPressed: () {
                                  var selectOtherOption =
                                      context.read<TimerModel>();

                                  selectOtherOption.option2Select();
                                },
                                child: Text(
                                  '50 : 10',
                                  style: GoogleFonts.roboto(
                                      color: const Color.fromARGB(
                                          255, 147, 246, 226),
                                      fontSize: 25,
                                      shadows: [
                                        const Shadow(
                                          color: Color.fromARGB(64, 0, 0, 0),
                                          offset: Offset(2,
                                              2), // Shadow offset (horizontal, vertical)
                                          blurRadius: 4, // Shadow blur radius
                                        )
                                      ]),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DisplayTimeCard(
                                value: value.minutes,
                                unitOfTimeLabel: 'Minutes'),
                            const SizedBox(
                              width: 10,
                            ),
                            DisplayTimeCard(
                                value: value.seconds,
                                unitOfTimeLabel: 'Minutes')
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 80,
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(140, 30, 30, 30),
                                maximumSize: const Size(149, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                elevation: 4),
                            onPressed: () {
                              var startState = context.read<TimerModel>();

                              startState.skip();
                            },
                            child: Text(
                              'Skip',
                              style: GoogleFonts.roboto(
                                  color:
                                      const Color.fromARGB(255, 147, 246, 226),
                                  fontSize: 20,
                                  shadows: [
                                    const Shadow(
                                      color: Color.fromARGB(64, 0, 0, 0),
                                      offset: Offset(2,
                                          2), // Shadow offset (horizontal, vertical)
                                      blurRadius: 4, // Shadow blur radius
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Text(
                          value.phaseText,
                          style: GoogleFonts.roboto(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(140, 30, 30, 30)),
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          width: 149,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(140, 30, 30, 30),
                                maximumSize: const Size(149, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                elevation: 4),
                            onPressed: () {
                              var startState = context.read<TimerModel>();

                              startState.startTimer();
                            },
                            child: Text(
                              'Start',
                              style: GoogleFonts.roboto(
                                  color:
                                      const Color.fromARGB(255, 147, 246, 226),
                                  fontSize: 25,
                                  shadows: [
                                    const Shadow(
                                      color: Color.fromARGB(64, 0, 0, 0),
                                      offset: Offset(2,
                                          2), // Shadow offset (horizontal, vertical)
                                      blurRadius: 4, // Shadow blur radius
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 149,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(140, 30, 30, 30),
                                maximumSize: const Size(149, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                elevation: 4),
                            onPressed: () {
                              var startState = context.read<TimerModel>();

                              startState.stopTimer();
                            },
                            child: Text(
                              'Stop',
                              style: GoogleFonts.roboto(
                                  color:
                                      const Color.fromARGB(255, 147, 246, 226),
                                  fontSize: 25,
                                  shadows: [
                                    const Shadow(
                                      color: Color.fromARGB(64, 0, 0, 0),
                                      offset: Offset(2,
                                          2), // Shadow offset (horizontal, vertical)
                                      blurRadius: 4, // Shadow blur radius
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 149,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(140, 30, 30, 30),
                                maximumSize: const Size(149, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                elevation: 4),
                            onPressed: () {
                              var startState = context.read<TimerModel>();

                              startState.resetTimer();
                            },
                            child: Text(
                              'Reset',
                              style: GoogleFonts.roboto(
                                  color:
                                      const Color.fromARGB(255, 147, 246, 226),
                                  fontSize: 25,
                                  shadows: [
                                    const Shadow(
                                      color: Color.fromARGB(64, 0, 0, 0),
                                      offset: Offset(2,
                                          2), // Shadow offset (horizontal, vertical)
                                      blurRadius: 4, // Shadow blur radius
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Made\nby",
                    style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 147, 246, 226)),
                  ),
                  Text(
                    "Zyttal.",
                    style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 147, 246, 226),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                "Pomodoro Timer",
                style: GoogleFonts.roboto(
                    color: const Color.fromARGB(255, 147, 246, 226),
                    fontSize: 20,
                    shadows: [
                      const Shadow(
                        color: Color.fromARGB(64, 0, 0, 0),
                        offset: Offset(
                            2, 2), // Shadow offset (horizontal, vertical)
                        blurRadius: 4, // Shadow blur radius
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
