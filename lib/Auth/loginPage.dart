import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Utils/images.dart';
import 'package:whoosh/Widgets/Global/global_custom_button.dart';
import 'package:whoosh/Widgets/custom_textfield_widget.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double textsize = constraints.maxWidth * 0.05;
      double subtextsize = constraints.maxWidth * 0.035;
      return Scaffold(
        backgroundColor: whiteColour,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      height: constraints.maxHeight * 0.45,
                      child: const Image(
                        image: AssetImage(loginImage),
                      ),
                    ),
                  ),
                  Text(
                    'Access Your Cleaning Hub!',
                    style: GoogleFonts.poppins(fontSize: textsize),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        CustomTextFieldWidget(
                          subtextsize: subtextsize,
                          icon: Icons.account_circle,
                          hinttext: 'Name',
                        ),
                        sizedbox_h10,
                        CustomTextFieldWidget(
                          subtextsize: subtextsize,
                          icon: Icons.phone,
                          hinttext: 'Phone Number',
                        ),
                        sizedbox_h10,
                        CustomTextFieldWidget(
                          subtextsize: subtextsize,
                          icon: Icons.email,
                          hinttext: 'Email ID',
                        ),
                        sizedbox_h30,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: GlobalCustomButton(
          textsize: textsize,
          text: 'Get OTP',
          size: constraints.maxWidth,
          route: '/otp',
        ),
      );
    });
  }
}
