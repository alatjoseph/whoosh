import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Widgets/Features/order/Address_Page/address_textfield.dart';
import 'package:whoosh/Widgets/Global/appbar_global.dart';
import 'package:whoosh/Widgets/Global/global_custom_button.dart';

import '../../../Utils/constant_widgets.dart';
class AddressPage extends StatelessWidget {
  AddressPage({super.key});
  
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final apartmentController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final pinController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Scaffold(
          body: ListView(
            
            children: [
              Global_AppBar_Widget(
                  title: 'Address',
                  backgroundColor: primaryColour,
                  size: size),
              sizedbox_h10,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text(
                      'Add Address:',
                      style: GoogleFonts.poppins(
                        color: blackColour,
                        fontSize: size.maxWidth * 0.04,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     sizedbox_h20,
                AddressTextField(
                  title: 'First Name',
                  controller: firstNameController,
                ),
                AddressTextField(
                  title: 'Last Name',
                  controller: lastNameController,
                ),
                AddressTextField(
                  title: 'Address',
                  controller: addressController,
                ),
                AddressTextField(
                  title: 'Appartment/ Suite',
                  controller: apartmentController,
                ),
                AddressTextField(
                  title: 'City',
                  controller: cityController,
                ),
                AddressTextField(
                  title: 'State',
                  controller: stateController,
                ),
                AddressTextField(
                  title: 'PIN code',
                  controller: pinController,
                ),
                AddressTextField(
                  title: 'Phone number',
                  controller: phoneController,
                ),
          
                  ],
                ),
              ),
             // Padding so the last field doesn't hide behind button
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GlobalCustomButton(
              textsize: size.maxWidth * 0.047,
              size: size.maxWidth,
              text: 'Add Address',
              route: '/',
              Function: printdata,
            ),
          ),
        );
      },
    );
  }

  int printdata() {
    print('First Name: ${firstNameController.text}');
    print('Last Name: ${lastNameController.text}');
    print('Address: ${addressController.text}');
    print('Apartment: ${apartmentController.text}');
    print('City: ${cityController.text}');
    print('State: ${stateController.text}');
    print('PIN Code: ${pinController.text}');
    print('Phone Number: ${phoneController.text}');
    return 0;
  }
}
