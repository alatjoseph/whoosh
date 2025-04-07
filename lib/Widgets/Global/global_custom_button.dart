import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colours.dart';
class GlobalCustomButton extends StatelessWidget {
  const GlobalCustomButton({
    super.key,
    required this.textsize,
    required this.size,
    required this.text,
    required this.route,
  });

  final double textsize;
  final double size;
  final String text;
  final String route;
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
          onPressed: () {
            context.go(route);
          },
          child:   Text(
            text,
            style: GoogleFonts.poppins(fontSize: textsize,color: whiteColour,fontWeight: FontWeight.w500), 
          ),
        ),
      ),
    );
  }
}

