import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Widgets/Features/Shop%20Details/shop_service_list.dart';

import '../../../Utils/constant_widgets.dart';

class DressItemCard extends StatelessWidget {
  const DressItemCard({
    super.key,
    required this.widget,
  

  });

  final ShopServiceListWidget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Container(
        height: widget.size.maxHeight * .08,
        decoration: BoxDecoration(
          border: Border.all(
            color: greyColour,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: widget.size.maxHeight * .09,
                width: widget.size.maxWidth * .08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: yellowColour,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            sizedbox_w10,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'T-Shirt',
                  style: GoogleFonts.poppins(
                      color: blackColour,
                      fontSize: widget.size.maxWidth * 0.04,
                      fontWeight: FontWeight.w600),
                ),
                Text('र 200 ',
                    style: GoogleFonts.poppins(
                      color: blackColour,
                      fontSize: widget.size.maxWidth * 0.03,
                    )),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: (){
                
              },
              child: Center(
                child: Container(
                  width: widget.size.maxWidth * 0.25,
                  height: widget.size.maxHeight * 0.035,
                  decoration: BoxDecoration(
                    color: primaryColour,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: buttonColour,
                      width: 2,
                    ),
                  ),
                 
                    child: Center(
                      child: Text(
                        'ADD',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: blackColour,
                          fontSize: widget.size.maxWidth * 0.035,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
            ),
          
            sizedbox_w20,
          ],
        ),
      ),
    );
  }
}
