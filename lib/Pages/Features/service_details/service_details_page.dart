import 'package:flutter/material.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Widgets/Features/Home/laundry_card.dart';
import 'package:whoosh/Widgets/Global/appbar_global.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return   LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: SafeArea(child: ListView(
            children: [
              Global_AppBar_Widget(size: constraints,title: title,backgroundColor: primaryColour,),
              ...List.generate(
            10,
            (index) => Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Laundry_Card(size: constraints),
            ),
          ),
            ],
          )),
        );
      },
    
    );

  }               
}