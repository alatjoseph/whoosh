import 'package:flutter/material.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Widgets/Features/Laundry/laundry_card.dart';

import '../../../Utils/colours.dart';
import '../../../Widgets/Global/appbar_global.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                // AppBar placed outside Padding
                Global_AppBar_Widget(
                  size: constraints,
                  title: title,
                  backgroundColor: primaryColour,
                ),
                sizedbox_h10,
                // Padding applied to the rest of the screen
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: ListView(
                      children: [
                        ...List.generate(
                          10,
                          (index) => Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Laundry_Card(
                              size: constraints,
                              title: 'Laundry ${index + 1}',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
