import 'package:countdown_timer_app/timer_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayTimeCard extends StatelessWidget {
  DisplayTimeCard(
      {Key? key, required this.value, required this.unitOfTimeLabel});
  String value;
  String unitOfTimeLabel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(140, 30, 30, 30),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: [
        SizedBox(
          height: 18,
        ),
        Text(
          value,
          style: GoogleFonts.roboto(
              color: Color.fromARGB(255, 147, 246, 226),
              fontSize: 100,
              shadows: [
                Shadow(
                  color: Color.fromARGB(64, 0, 0, 0),
                  offset: Offset(2, 2), // Shadow offset (horizontal, vertical)
                  blurRadius: 4, // Shadow blur radius
                )
              ]),
        ),
        Text(
          unitOfTimeLabel,
          style: GoogleFonts.roboto(
              color: Color.fromARGB(255, 147, 246, 226),
              fontSize: 24,
              shadows: [
                Shadow(
                  color: Color.fromARGB(64, 0, 0, 0),
                  offset: Offset(2, 2), // Shadow offset (horizontal, vertical)
                  blurRadius: 4, // Shadow blur radius
                )
              ]),
        )
      ]),
    );
  }
}
