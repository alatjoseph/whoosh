
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';

import 'timebox.dart';
class DateTimeContainer extends StatelessWidget {
  DateTimeContainer({
    super.key,
    required this.constraints,
    required this.heading,
  });
  BoxConstraints constraints;
  String heading;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: GoogleFonts.poppins(
              fontSize: constraints.maxWidth * 0.04,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        ),
        sizedbox_h10,
        sizedbox_h5,
        Text(
          'Date',
          style: GoogleFonts.poppins(
            fontSize: constraints.maxWidth * 0.035,
            fontWeight: FontWeight.w500,
          ),
        ),
        sizedbox_h10,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                7,
                (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: constraints.maxWidth * 0.15,
                      width: constraints.maxWidth * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: whiteColour,
                          border: Border.all(color: greyColour, width: 1.5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'MON',
                            style: GoogleFonts.poppins(
                                fontSize: constraints.maxWidth * 0.036,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '24 June',
                            style: GoogleFonts.poppins(
                                fontSize: constraints.maxWidth * 0.029,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
        sizedbox_h20,
        Text(
          'Time',
          style: GoogleFonts.poppins(
            fontSize: constraints.maxWidth * 0.035,
            fontWeight: FontWeight.w500,
            color: blackColour
          ),
        ),
        sizedbox_h10,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
          ...List.generate(7, (index) => TimeBox(constraints: constraints),)
          
            ],
          ),
        )
      ],
    );
  }
}