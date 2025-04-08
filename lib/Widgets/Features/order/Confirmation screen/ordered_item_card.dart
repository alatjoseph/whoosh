
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Widgets/Features/order/Confirmation%20screen/circular_button.dart';

import '../../../../Utils/constant_widgets.dart';
class OderedItemCard extends StatelessWidget {
   OderedItemCard({
    super.key,required this.constraints
  });
BoxConstraints constraints;
  @override
  Widget build(BuildContext context, ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10), 
      child: Material(
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.9 ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        child: Container(
          
          height: constraints.maxWidth * .23,
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: whiteColour, 
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: yellowColour,
                  ),
        
                  height: constraints.maxWidth * .16,
                  width: constraints.maxWidth * .15,
                  //child: Image.asset('assets/images/login.jpg',fit: BoxFit.cover,)
                ),
              ),
              sizedbox_w10,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'T-shirt',
                      style: GoogleFonts.poppins(
                          fontSize: constraints.maxWidth * .04,
                          fontWeight: FontWeight.w600),
                    ),
                    Text('₹ 50',
                        style: GoogleFonts.poppins(
                            fontSize: constraints.maxWidth * .03,
                            fontWeight: FontWeight.w600)),
                    Text('Service : Wash & Fold',
                        style: GoogleFonts.poppins(
                            fontSize: constraints.maxWidth * .03,
                            color: greyColour,
                            fontWeight: FontWeight.w500)),
                    Text('Delivery : 12Hrs',
                        style: GoogleFonts.poppins(
                            fontSize: constraints.maxWidth * .03,
                            color: greyColour,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              sizedbox_w20,
              CircularButtonWidget(
                icon: Icons.remove,
              ),
              sizedbox_w10,
              const Text('10'),
              sizedbox_w10,
              CircularButtonWidget(
                icon: Icons.add,
              ),
               sizedbox_w10, 
            ],
          ),
        ),
      ),
    );
  }
}

