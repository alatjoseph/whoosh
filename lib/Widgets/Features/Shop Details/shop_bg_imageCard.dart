import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Widgets/Global/appbar_global.dart';

import '../../../Utils/colours.dart';
class Shop_Background_ImageCard extends StatelessWidget {
  const Shop_Background_ImageCard({
    super.key,
    required this.title,
    required this.constraints,
  });

  final String title;
final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: constraints.maxWidth * 0.78,
          width: double.infinity,
          color: whiteColour,
        ),
        Container(
          height: constraints.maxWidth * 0.6,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/demo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4), // Increase blur for better effect
            child: Container(),
          ),
        ),
        // Move AppBar Widget above the blur filter
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Global_AppBar_Widget(
            title: title,
            backgroundColor: transparentColour,
            size: constraints,
          ),
        ),
        Positioned(
          bottom: constraints.maxWidth * 0.3 / 10.2,
          left: 0,
          right: 0,
          child: SizedBox(
            
            height: constraints.maxWidth * 0.3,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: buttonColour,
                      radius: constraints.maxWidth * 0.14 ,
                      backgroundImage:
                          const AssetImage('assets/images/logo.png'),
                    ),
                    sizedbox_w10,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tumble Dry',
                            style: GoogleFonts.poppins(
                                fontSize: constraints.maxWidth * 0.04,
                                fontWeight: FontWeight.w700)),
                        sizedbox_h5,
                        Row(
                          children: [
                            Text("Bengaluru",
                                style: GoogleFonts.poppins(
                                    fontSize:
                                        constraints.maxWidth * 0.03,
                                    fontWeight: FontWeight.w400)),
                            sizedbox_w10,
                            Icon(Icons.circle,
                                size: constraints.maxWidth * 0.02,
                                color: greyColour), sizedbox_w10,
                            Text("10 km",
                                style: GoogleFonts.poppins(
                                    fontSize:
                                        constraints.maxWidth * 0.03,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,
                            size: constraints.maxWidth * 0.05,
                            color: yellowColour),
                            sizedbox_w5,
                            Text("4.5 (1K +)",
                                style: GoogleFonts.poppins(
                                    fontSize:
                                        constraints.maxWidth * 0.03,
                                    fontWeight: FontWeight.w600)), 
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
