import 'package:flutter/material.dart';
import 'package:whoosh/Widgets/Features/Shop%20Details/shop_bg_imageCard.dart';
import 'package:whoosh/Widgets/Global/global_custom_button.dart';

import '../../../Widgets/Features/Shop Details/shop_service_list.dart';

class ShopDetailsScreen extends StatelessWidget {
  const ShopDetailsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Shop_Background_ImageCard(title: title, constraints: constraints),
              Container(
                height: constraints.maxWidth*0.7,
                child: ListView(children: [
                  ShopServiceListWidget(
                    size: constraints,
                  ),
                ]),
              ),
              GlobalCustomButton(
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

