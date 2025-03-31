import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Widgets/Features/Laundry/laundry_card.dart';

import '../../../Utils/colours.dart';
class Nearby_Laundries_List extends StatelessWidget {
   Nearby_Laundries_List({
    super.key,
    required this.size
  });
BoxConstraints size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearby Laundries',
                style: GoogleFonts.poppins(
                    fontSize: size.maxWidth * 0.04,
                    fontWeight: FontWeight.w600),
              ),
              Icon(Icons.sort,
                  size: size.maxWidth * 0.05,
                  color:blackColour),
            ],
          ),
          ...List.generate(
            4,
            (index) => Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Laundry_Card(size: size,
                title: 'Laundry ${index + 1}',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
