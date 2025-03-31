import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';

import '../../../Utils/constant_widgets.dart';
class Home_SearchBar_Widget extends StatelessWidget {
  const Home_SearchBar_Widget({
    super.key,
    required this.textsize,
    required this.size,
  });

  final double textsize;
final BoxConstraints size;
  @override
  Widget build(BuildContext context) {
    final searchbar_textSize= size.maxWidth*0.045;
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Container(
        height: 50,
        width: size.maxWidth*0.1,
        decoration: BoxDecoration(
          border: Border.all(
            color: greyColour,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(Icons.search,size: size.maxHeight*0.06,),
            sizedbox_w10,
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Services/Laundry Shops' ,
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.poppins(fontSize: searchbar_textSize,color: greyColour)
                ),
                style: TextStyle(
                  fontSize: searchbar_textSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
