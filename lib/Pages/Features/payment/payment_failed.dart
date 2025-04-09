import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:whoosh/Utils/constant_widgets.dart';

import '../../../Utils/colours.dart';

class PaymentFailed extends StatelessWidget {
  const PaymentFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: constraints.maxWidth,
                width: constraints.maxWidth*0.8,
                child: Lottie.asset(
                  'assets/images/payment_failed.json',
                  fit: BoxFit.contain,
                ),
              ),
              
              
              Text(
                'FAILED !',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  
                  color: redColour,
                    fontSize: constraints.maxWidth * 0.081,
                    fontWeight: FontWeight.w600),
              ),
              sizedbox_h20,
              Text(
                'Your Payment is not Successful',
                style: GoogleFonts.poppins(
               
                    fontSize: constraints.maxWidth * 0.035,
                    fontWeight: FontWeight.w500),
              ),
              sizedbox_h10,
              Text(
                'Try Again',
                style: GoogleFonts.poppins(
                
                    fontSize: constraints.maxWidth * 0.034,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        );
      }),
    );
  }
}
