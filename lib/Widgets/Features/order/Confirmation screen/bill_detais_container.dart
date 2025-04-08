import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';

import '../../../../Utils/constant_widgets.dart';
class BillDetaisContainer extends StatelessWidget {
   BillDetaisContainer({
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
          'Bill Details',
          style: GoogleFonts.poppins(
              fontSize: constraints.maxWidth * 0.04,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationColor: blackColour,
              decorationThickness: 1.5),
        ),
        sizedbox_h10, 
        Container(
          height: constraints.maxHeight * 0.2,
          decoration: BoxDecoration(
              border: Border.all(color: greyColour)),
          child: Column(
            children: [
              sizedbox_h20,
              bill_text("Total Items", "2"),
              bill_text("Delivery Fee", "2"),
              bill_text("Discount Fee", "2"),
              bill_text("To Pay", "2", color: greenColour,fontWeight: FontWeight.bold ),
            ],
          ),
        )
      ],
    );
  }


  
  Padding bill_text(String key, String value, {Color color = blackColour,FontWeight fontWeight = FontWeight.w500}) {
    return Padding(
      padding: EdgeInsets.only(left: 18.0, right: 18, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$key :',
            style: GoogleFonts.poppins(color: color,fontWeight: fontWeight),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(color: color,fontWeight: fontWeight ),
          )
        ],
      ),
    );
  }
}


