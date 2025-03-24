import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Resourses/colours.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textsize,
    required this.size,
    required this.text,
  });

  final double textsize;
  final double size;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        height: size * 0.1,
        width: double.infinity,
      
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColour,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), 
            ),
          ),
          onPressed: () {},
          child:   Text(
            text,
            style: GoogleFonts.poppins(fontSize: textsize,color: whiteColour,fontWeight: FontWeight.w500), 
          ),
        ),
      ),
    );
  }
}

