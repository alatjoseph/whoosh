import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Pages/Features/service_details/service_details_page.dart';

import '../../../Utils/constant_widgets.dart';
class Scrollable_ServiceList_Widget extends StatelessWidget {
   Scrollable_ServiceList_Widget({
    super.key,
    required this.size,
  });
BoxConstraints size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0,right: 18.0),
      child: SizedBox(
       height: size.maxHeight * 0.18, // Set height for horizontal list
       child: ListView.separated(
         scrollDirection: Axis.horizontal,
         itemCount: 10,
         separatorBuilder: (context, index) => sizedbox_w10,
         itemBuilder: (context, index) {
           return Column(
             children: [
               GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ServiceDetailsScreen(),
                    ),
                  );
                },
                 child: CircleAvatar(
                   radius: size.maxWidth * 0.09,
                   //backgroundImage: const AssetImage(loginImage),
                 ),
               ),
               Text( 
                 'Service ${index + 1}', // Replace with your dynamic name
                 style: GoogleFonts.poppins(
                   fontSize: size.maxWidth * 0.03,
                   fontWeight: FontWeight.w500,
                 ),
               ),
             ],
           );
         },
       ),
                ),
    );
  }
}
