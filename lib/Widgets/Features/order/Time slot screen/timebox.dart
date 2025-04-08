import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
class TimeBox extends StatelessWidget {
  const TimeBox({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 10 ),
      child: Container(
        height: constraints.maxWidth * 0.06,
        width: constraints.maxWidth * 0.16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: whiteColour,
            border: Border.all(color: greyColour, width: 1)),
        child: Center(
            child: Text(
          '90.00 am',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: constraints.maxWidth * .0245),
        )),
      ),
    );
  }
}
