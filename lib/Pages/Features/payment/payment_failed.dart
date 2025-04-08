import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color:redColour,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    height: 130,
                    width: 130,
                    child: Image.asset(
                      'assets/images/payment_failed.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              sizedbox_h20,
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
