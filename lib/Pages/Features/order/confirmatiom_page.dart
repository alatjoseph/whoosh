import 'package:flutter/material.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Widgets/Features/order/Confirmation%20screen/bill_detais_container.dart';
import 'package:whoosh/Widgets/Global/appbar_global.dart';
import 'package:whoosh/Widgets/Global/global_custom_button.dart';

import '../../../Widgets/Features/order/Confirmation screen/ordered_item_card.dart';
import '../../../Widgets/Features/order/Confirmation screen/shedule_details_container.dart';

class OrderConfirmatiomPage extends StatelessWidget {
  const OrderConfirmatiomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView(
            children: [
              Global_AppBar_Widget(
                title: 'Order Confirmation',
                backgroundColor: primaryColour,
                size: constraints,
              ),
              sizedbox_h10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      2,
                      (index) => OderedItemCard(
                        constraints: constraints,
                      ),
                    ),
                    sizedbox_h10,
                    Shedule_Details_Container(
                      constraints: constraints,
                    ),
                    sizedbox_h20,
                    BillDetaisContainer(constraints: constraints,)
                  ],
                ),
              ),
              GlobalCustomButton(
                        textsize: constraints.maxWidth * 0.047,
                        size: constraints.maxWidth,
                        text: 'Proceed to Payment',
                        route: '/addresspage'),
            ],
          );
        },
      ),
    );
  }
}