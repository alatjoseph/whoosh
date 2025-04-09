import 'package:flutter/material.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Widgets/Features/order/Time%20slot%20screen/date_time_container.dart';
import 'package:whoosh/Widgets/Global/appbar_global.dart';
import 'package:whoosh/Widgets/Global/global_custom_button.dart';

class TimeSlot extends StatelessWidget {
  const TimeSlot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return ListView(
          children: [
            SizedBox(
              
              height: constraints.maxHeight - constraints.maxWidth* 0.3,
              child: ListView(
                children: [
                  Global_AppBar_Widget(
                      title: 'Time Slot ',
                      backgroundColor: primaryColour,
                      size: constraints),
                  sizedbox_h10,
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DateTimeContainer(
                          constraints: constraints,
                          heading: 'Pick Up',
                        ),
                        sizedbox_h30,
                        sizedbox_h10,
                        DateTimeContainer(
                          constraints: constraints,
                          heading: 'Delivery',
                        ),
                      ],
                    ),
                  ),
                  sizedbox_h20
                ],
              ),
            ),
            Center(
              child: GlobalCustomButton(
                  textsize: constraints.maxWidth * 0.047,
                  size: constraints.maxWidth,
                  text: 'Confirm Your Order',
                  route: '/orderConfirmation'),
            ),
          ],
        );
      }),
    );
  }
}
