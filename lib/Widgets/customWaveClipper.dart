import 'package:flutter/material.dart';


class CustomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

  path.moveTo(0, size.height/5 );

    // Quadratic Bézier Curve
    path.quadraticBezierTo(
      size.width/5,  // Control point (middle top)
      size.height-50,
      size.width-10,
      size.height/3,
      // End point (bottom right)
    );

    // // Second curve (middle smooth wave)
    // path.quadraticBezierTo(
    //     size.width * 0.6, -size.height * 0.05, 
    //     size.width * 0.8, size.height * 0.1);

    // // Third curve (right bulging shape)
    // path.quadraticBezierTo(
    //     size.width * 0.95, size.height * 0.3, 
    //     size.width, size.height * 0.1);

    // path.lineTo(size.width, size.height); // Move to bottom right
    // path.lineTo(0, size.height); // Move to bottom left
    // path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
