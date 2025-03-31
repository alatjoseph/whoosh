import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Utils/images.dart';
import 'package:whoosh/Widgets/custom_button.dart';
import 'package:whoosh/Widgets/custom_textfield_widget.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColour,
      body: LayoutBuilder(builder: (context, value) {
        double textsize = value.maxWidth * 0.05;
        double subtextsize = value.maxWidth * 0.035;
        return SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: value.maxHeight * 0.45,
                  child: const Image(image: AssetImage(loginImage)),
                ),
              ),
              Text(
                'Access Your Cleaning Hub! ',
                style: GoogleFonts.poppins(fontSize: textsize),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: SizedBox(
                  height: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomTextFieldWidget(
                            subtextsize: subtextsize,
                            icon: Icons.account_circle,
                            hinttext: 'Name'),
                        sizedbox_h10,
                        CustomTextFieldWidget(
                            subtextsize: subtextsize,
                            icon: Icons.phone,
                            hinttext: 'Phone Number'),
                        sizedbox_h10,
                        CustomTextFieldWidget(
                            subtextsize: subtextsize,
                            icon: Icons.email,
                            hinttext: 'Email ID'), // Third card
                        sizedbox_h30,
                        CustomButton(
                            textsize: textsize,
                            text: 'Get OTP',
                            size: value.maxWidth,
                            route: '/otp',),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
