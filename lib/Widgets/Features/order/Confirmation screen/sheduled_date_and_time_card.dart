import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
class SheduledDate_and_TimeCard extends StatelessWidget {
   SheduledDate_and_TimeCard({
    super.key,
    required this.constraints,
    required this.title,
  });
BoxConstraints constraints;
String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: greyColour),
          borderRadius: BorderRadius.circular(10)),
      height: constraints.maxWidth * .21,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$title :",
              style: GoogleFonts.poppins(
                  fontSize: constraints.maxWidth * 0.034,
                  fontWeight: FontWeight.w500),
            ),
            sizedbox_h5,
            Row(
              children: [
                Icon(
                  Icons.calendar_today_rounded,
                  size: constraints.maxWidth * 0.04,
                ),
                sizedbox_w10,
                Text(
                  "Mon 21 June",
                  style: GoogleFonts.poppins(
                      fontSize: constraints.maxWidth * 0.035,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.alarm_sharp,
                  size: constraints.maxWidth * 0.04,
                ),
                sizedbox_w10,
                Text(
                  "10.00 am",
                  style: GoogleFonts.poppins(
                      fontSize: constraints.maxWidth * 0.035 ,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
