import 'package:flutter/material.dart';
import 'package:whoosh/Utils/colours.dart';

class CircularButtonWidget extends StatelessWidget {
  CircularButtonWidget({
    super.key,
    required this.icon,
  });
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 26,
      height: 26,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          side: const BorderSide(
            color: buttonColour,
            width: 2,
          ),
          padding: EdgeInsets.zero,
          backgroundColor: primaryColour,
          elevation: 3,
        ),
        child: Icon(
          icon,
          size: 20, // smaller icon to match button size
          color: buttonColour,
        ),
      ),
    );
  }
}
