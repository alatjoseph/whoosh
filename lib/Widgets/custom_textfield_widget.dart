import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';  
class CustomTextFieldWidget extends StatelessWidget {
  
  const CustomTextFieldWidget({
    super.key,
    required this.subtextsize,
    required this.hinttext,
    required this.icon,
  });

  final double subtextsize;
  final String hinttext;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 4,
        shadowColor: blackColour,
        borderRadius: BorderRadius.circular(10),
        color: whiteColour,
        child: Row(
          children: [
            sizedbox_w10,
             Icon(
             icon,
              color: iconsColour,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: hinttext,
                  hintStyle: GoogleFonts.poppins(fontSize: subtextsize),
                  border: InputBorder.none,
              
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
