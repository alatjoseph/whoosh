import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';

import '../../../Utils/constant_widgets.dart';
class Laundry_Shop_Name_Card extends StatelessWidget {
  const Laundry_Shop_Name_Card({
    super.key,
    required this.size,
    required this.title,
  });
final BoxConstraints size;
final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push('/laundryDetails', extra: title);
    
      },
      child: Container(
        height: size.maxHeight * 0.144,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: greyColour,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: buttonColour,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: greyColour,
                    ),
                  ),
                  height: size.maxHeight * 0.15,
                  width: size.maxHeight * 0.15,
                ),
                Positioned(
                  top: 5,
                  right: 10,
                  child: GestureDetector(
                    onTap: () {
                      // Handle favorite button tap
                    
                    },
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: whiteColour,
                      size: size.maxHeight * 0.035,
                    ),
                  ),
                ),
              ],
            ),
          
            // Space between the container and the text
            sizedbox_w10,
          
            // Shop Name Text
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shop Name',
                        style: GoogleFonts.poppins(
                          fontSize: size.maxWidth * 0.04,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      sizedbox_h5,
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: buttonColour,
                              radius: size.maxWidth * 0.027,
                              child: Center(
                                  child: Icon(
                                Icons.star,
                                color: whiteColour,
                                size: size.maxWidth * 0.038,
                              ))),
                          sizedbox_w5,
                          Text(
                            '4.5 (' '11K+' ')',
                            style: GoogleFonts.poppins(
                                color: blackColour,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      sizedbox_h5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Bengaluru',
                            style: GoogleFonts.poppins(
                                color: greyColour,
                                fontWeight: FontWeight.w500),
                          ),
                          sizedbox_w10,
                          Icon(Icons.circle,
                              size: size.maxWidth * 0.02,
                              color: greyColour),
                          sizedbox_w10,
                          Text(
                            '9 Km',
                            style: GoogleFonts.poppins(
                                color: greyColour,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  
                ],
              ),
            ),
            const Spacer(),
            IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_border,
                          size: size.maxWidth * 0.07,
                          color: blackColour))
          ],
        ),
      ),
    );
  }
}