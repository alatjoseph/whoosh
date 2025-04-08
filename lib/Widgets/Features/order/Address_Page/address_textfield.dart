import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
class AddressTextField extends StatelessWidget {
  final String title;
  TextEditingController? controller;
  AddressTextField({
    super.key,
    required this.title,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Use full screen size

    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: Container(
        height: size.height * 0.067, // Fixed height based on screen
        decoration: BoxDecoration(
          border: Border.all(color: greyColour),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: controller,
          onChanged: (value) => controller?.text = value,
          decoration: InputDecoration(
            
            hintText: title,
            hintStyle: GoogleFonts.poppins(
              color: greyColour,
              fontSize: size.width * 0.04,
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
              vertical: size.height * 0.01,
            ),
          ),
        ),
      ),
    );
  }
}
