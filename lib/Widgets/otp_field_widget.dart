import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: PinCodeTextField(
        appContext: context,
        length: 4, 
        keyboardType: TextInputType.number,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box, 
          borderRadius: BorderRadius.circular(8),
          fieldHeight: 50,
          fieldWidth: 50,
          activeFillColor: Colors.white,
          inactiveFillColor: Colors.grey.shade200,
          activeColor: Colors.blue,
          inactiveColor: Colors.grey,
          selectedColor: Colors.blueAccent,
        ),
        onChanged: (value) {
          print("Entered OTP: $value");
        },
      ),
    );
  }
}
