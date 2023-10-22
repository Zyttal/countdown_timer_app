import 'package:countdown_timer_app/timer_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CountdownTimerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TimerModel>(
      builder: (context, value, child) => Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 115,
                              height: 129,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(140, 30, 30, 30),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  value.hours,
                                  style: GoogleFonts.roboto(
                                      color: Color.fromARGB(255, 147, 246, 226),
                                      fontSize: 60,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(64, 0, 0, 0),
                                          offset: Offset(2,
                                              2), // Shadow offset (horizontal, vertical)
                                          blurRadius: 4, // Shadow blur radius
                                        )
                                      ]),
                                ),
                                Text(
                                  'Hours',
                                  style: GoogleFonts.roboto(
                                      color: Color.fromARGB(255, 147, 246, 226),
                                      fontSize: 14,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(64, 0, 0, 0),
                                          offset: Offset(2,
                                              2), // Shadow offset (horizontal, vertical)
                                          blurRadius: 4, // Shadow blur radius
                                        )
                                      ]),
                                )
                              ]),
                            ),
                            Container(
                              width: 115,
                              height: 129,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(140, 30, 30, 30),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  value.minutes,
                                  style: GoogleFonts.roboto(
                                      color: Color.fromARGB(255, 147, 246, 226),
                                      fontSize: 60,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(64, 0, 0, 0),
                                          offset: Offset(2,
                                              2), // Shadow offset (horizontal, vertical)
                                          blurRadius: 4, // Shadow blur radius
                                        )
                                      ]),
                                ),
                                Text(
                                  'Minutes',
                                  style: GoogleFonts.roboto(
                                      color: Color.fromARGB(255, 147, 246, 226),
                                      fontSize: 14,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(64, 0, 0, 0),
                                          offset: Offset(2,
                                              2), // Shadow offset (horizontal, vertical)
                                          blurRadius: 4, // Shadow blur radius
                                        )
                                      ]),
                                )
                              ]),
                            ),
                            Container(
                              width: 115,
                              height: 129,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(140, 30, 30, 30),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  value.seconds,
                                  style: GoogleFonts.roboto(
                                      color: Color.fromARGB(255, 147, 246, 226),
                                      fontSize: 60,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(64, 0, 0, 0),
                                          offset: Offset(2,
                                              2), // Shadow offset (horizontal, vertical)
                                          blurRadius: 4, // Shadow blur radius
                                        )
                                      ]),
                                ),
                                Text(
                                  'Seconds',
                                  style: GoogleFonts.roboto(
                                      color: Color.fromARGB(255, 147, 246, 226),
                                      fontSize: 14,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(64, 0, 0, 0),
                                          offset: Offset(2,
                                              2), // Shadow offset (horizontal, vertical)
                                          blurRadius: 4, // Shadow blur radius
                                        )
                                      ]),
                                )
                              ]),
                            ),
                          ],
                        ),
                        const SizedBox(height: 100),
                        Container(
                          width: 149,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(140, 30, 30, 30),
                                maximumSize: Size(149, 50),
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
                                  color: Color.fromARGB(255, 147, 246, 226),
                                  fontSize: 25,
                                  shadows: [
                                    Shadow(
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
                        Container(
                          width: 149,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(140, 30, 30, 30),
                                maximumSize: Size(149, 50),
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
                                  color: Color.fromARGB(255, 147, 246, 226),
                                  fontSize: 25,
                                  shadows: [
                                    Shadow(
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
                        Container(
                          width: 149,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(140, 30, 30, 30),
                                maximumSize: Size(149, 50),
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
                                  color: Color.fromARGB(255, 147, 246, 226),
                                  fontSize: 25,
                                  shadows: [
                                    Shadow(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Made\nby",
                    style: GoogleFonts.roboto(
                        color: Color.fromARGB(255, 147, 246, 226)),
                  ),
                  Text(
                    "Zyttal.",
                    style: GoogleFonts.roboto(
                        color: Color.fromARGB(255, 147, 246, 226),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              left: 10,
              bottom: 10,
            ),
            Positioned(
              child: Text(
                "Countdown Timer",
                style: GoogleFonts.roboto(
                    color: Color.fromARGB(255, 147, 246, 226),
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(64, 0, 0, 0),
                        offset: Offset(
                            2, 2), // Shadow offset (horizontal, vertical)
                        blurRadius: 4, // Shadow blur radius
                      )
                    ]),
              ),
              left: 10,
              top: 10,
            )
          ],
        ),
      ),
    );
  }
}
