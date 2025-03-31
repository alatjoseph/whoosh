import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Utils/images.dart';
import 'package:whoosh/Widgets/custom_button.dart';
import 'package:whoosh/Widgets/otp_field_widget.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColour,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, value) {
          double textsize = value.maxWidth * 0.05;
          double subtextsize = value.maxWidth * 0.035;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                
                children: [
                  sizedbox_h30,
                  Text(
                    'Verify your mobile number',
                    style: GoogleFonts.poppins(
                      fontSize: textsize,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Center(
                    child: SizedBox(
                      height: value.maxHeight * 0.45,
                      child: const Image(image: AssetImage(loginImage)),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text:
                          'Please enter the verification code send to your number ',
                      style: GoogleFonts.poppins(
                        fontSize: subtextsize,
                        color: Colors.grey,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '+91 9446338298',
                          style: GoogleFonts.poppins(
                            fontSize: subtextsize,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  sizedbox_h20,
                  OTPField(),
                   Text('Autofill code',style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   SizedBox(height: value.maxHeight*0.1,),
                  CustomButton(textsize: textsize, size: value.maxWidth, text: 'Verify', route: '/home',),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
