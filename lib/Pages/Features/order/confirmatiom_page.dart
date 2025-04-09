import 'package:flutter/material.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Widgets/Features/order/Confirmation%20screen/shedule_details_container.dart';

import '../../../Utils/constant_widgets.dart';
import '../../../Widgets/Features/order/Confirmation screen/bill_detais_container.dart';
import '../../../Widgets/Features/order/Confirmation screen/ordered_item_card.dart';
import '../../../Widgets/Global/appbar_global.dart';
import '../../../Widgets/Global/global_custom_button.dart';
class OrderConfirmatiomPage extends StatelessWidget {
  const OrderConfirmatiomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: ListView(
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
      //                SizedBox(
      //   height: constraints.maxHeight * 0.35, // Adjust the height as needed
      //   child: ListView.builder(
      //     itemCount: 4,
      //     itemBuilder: (context, index) {
      //       return OderedItemCard(constraints: constraints);
      //     },
      //   ),
      // ),
                    ...List.generate(
                      12,
                      (index) => OderedItemCard(
                        constraints: constraints,
                      ),
                    ),
                    sizedbox_h10,
                    Shedule_Details_Container(
                      constraints: constraints,
                    ),
                    sizedbox_h20,
                    BillDetaisContainer(constraints: constraints),
                   
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: GlobalCustomButton(
            textsize: constraints.maxWidth * 0.047,
            size: constraints.maxWidth,
            text: 'Proceed to Payment',
            route: '/addresspage',
          ),
        );
      },
    );
  }
}
