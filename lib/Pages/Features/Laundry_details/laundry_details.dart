import 'package:flutter/material.dart';
import 'package:whoosh/Widgets/Features/LaundryService/laundryDetail_imageCard.dart';
import 'package:whoosh/Widgets/custom_button.dart';

import '../../../Widgets/Features/LaundryService/shop_service_list.dart';

class LaundryDetailsScreen extends StatelessWidget {
  const LaundryDetailsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              LaundryPage_ImageCard(title: title, constraints: constraints),
              Container(
                height: constraints.maxWidth*0.7,
                child: ListView(children: [
                  AvatarListWidget(
                    size: constraints,
                  ),
                ]),
              ),
              CustomButton(
                  textsize: constraints.maxWidth * 0.05,
                  size: constraints.maxWidth,
                  text: 'Schedule',
                  route: '/')
            ],
          ),
        ),
      );
    });
  }
}

