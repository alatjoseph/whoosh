import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:whoosh/Utils/constant_widgets.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: constraints.maxWidth*0.8,
                width: constraints.maxWidth*0.8,
                child: Lottie.asset(
                  'assets/images/payment_success.json',
                  fit: BoxFit.contain,
                ),
              ),
              sizedbox_h20,
              Text(
                'SUCCESS !',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: constraints.maxWidth * 0.081,
                    fontWeight: FontWeight.w600),
              ),
              sizedbox_h10,
              Text(
                'Your Payment is Successful',
                style: GoogleFonts.poppins(
                    fontSize: constraints.maxWidth * 0.035,
                    fontWeight: FontWeight.w600),
              ),
              sizedbox_h10,
              Text(
                'Thankyou for your order. You will receive email confirmation shortly ',
                textAlign: TextAlign.center,
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
