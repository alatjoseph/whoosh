import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';

class HomeScreen_AppBar_Widget extends StatelessWidget {
  const HomeScreen_AppBar_Widget({
    super.key,
    required this.subtextsize,
    required this.textsize,
    required this.size,
  });

  final double subtextsize;
  final double textsize;
  final BoxConstraints size;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: size.maxHeight * 0.14,
      decoration: const BoxDecoration(
        color: primaryColour,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                   
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: iconsColour,
                      ),
                      Text(
                        'Location',
                        style: GoogleFonts.poppins(
                            color: blackColour, fontSize: subtextsize),
                      ),
                    ],
                  ),
                  Text(
                    'Madiwala',
                    style: GoogleFonts.poppins(
                        color: blackColour,
                        fontSize: textsize,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.notifications_outlined,
              color: blackColour,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
