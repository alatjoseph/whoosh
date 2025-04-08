import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Widgets/Features/order/Confirmation%20screen/sheduled_date_and_time_card.dart';

import '../../../../Utils/colours.dart';

class Shedule_Details_Container extends StatelessWidget {
   Shedule_Details_Container({
    super.key,
    required this.constraints,
  });
BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Schedule',
          style: GoogleFonts.poppins(
              fontSize: constraints.maxWidth * 0.04,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationColor: blackColour,
              decorationThickness: 1.5),
        ),
        sizedbox_h10,
    Row(
      children: [
        SheduledDate_and_TimeCard(
          constraints: constraints,
          title: 'Pickup',
        ),
        sizedbox_w30,
        SheduledDate_and_TimeCard(
          constraints: constraints,
          title: 'Delivery',
        ),
      ],
    ),
      ],
    );
  }
}
