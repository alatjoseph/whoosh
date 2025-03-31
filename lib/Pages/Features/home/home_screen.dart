import 'package:flutter/material.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Widgets/Features/Home/Scrollable_service_widget.dart';
import 'package:whoosh/Widgets/Features/Home/appBar_Widget.dart';
import 'package:whoosh/Widgets/Features/Home/image_slider.dart';
import 'package:whoosh/Widgets/Features/Home/searchBar_Widget.dart';
import 'package:whoosh/Widgets/Features/Laundry/nearby_Laundries_List.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      double textsize = size.maxWidth * 0.04;
      double subtextsize = size.maxWidth * 0.03;

      return ListView(
        
        children: [
          HomeScreen_AppBar_Widget(
            subtextsize: subtextsize,
            textsize: textsize,
            size: size,
          ),
          sizedbox_h10,
          Home_SearchBar_Widget(textsize: textsize, size: size),
          sizedbox_h10,
          ImageSlider(size: size),
          sizedbox_h10,
          Scrollable_ServiceList_Widget(size: size),
          sizedbox_h10,
          Nearby_Laundries_List(size: size),
          sizedbox_h10,
          // Displaying multiple Laundry_Card widgets in a ListView
          
        ],
      );
    });
  }
}





