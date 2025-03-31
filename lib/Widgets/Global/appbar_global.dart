import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';

class Global_AppBar_Widget extends StatelessWidget {
  const Global_AppBar_Widget({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.size,
  });

  final String title;
final Color backgroundColor;
  final BoxConstraints size;
 
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: size.maxHeight * 0.098,
      decoration:  BoxDecoration(
        color:backgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             IconButton(
              onPressed: () {
                context.pop();
              },
               icon: Icon(
                CupertinoIcons.back,
                color: blackColour,
                size: size.maxWidth * 0.07,
                             ),
             ),
            sizedbox_w10,
            Text(
              title,
              style: GoogleFonts.poppins(
                  color: blackColour,
                  fontSize: size.maxWidth * 0.05,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
