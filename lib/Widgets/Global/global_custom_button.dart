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
    this.Function
  });

  final double textsize;
  final double size;
  final String text;
  final String route;
  final Function;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        height: size * 0.12,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColour,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            if (Function != null) {
              Function();
            }
            
            GoRouter.of(context).push(route);
          },
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                  fontSize: textsize,
                  color: whiteColour,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
