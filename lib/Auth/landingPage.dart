import 'package:flutter/material.dart';
import 'package:whoosh/Utils/colours.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: whiteColour,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(
            child: Container(
              color: blackColour,
              child: Image(
                width: double.infinity,
                
                image: Image(image: AssetImage('assets/landing3.avif')).image,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
