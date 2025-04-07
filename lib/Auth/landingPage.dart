// import 'package:flutter/material.dart';
// import 'package:whoosh/Utils/colours.dart';

// class OnboardingScreen extends StatelessWidget {
//   const OnboardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: whiteColour,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
          
//           Center(
//             child: Container(
//               color: blackColour,
//               child: Image(
//                 width: double.infinity,
                
//                 image: Image(image: AssetImage('assets/landing3.avif')).image,
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:whoosh/Utils/colours.dart';


class OnboardingScreen extends StatelessWidget {
  const 
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                color: yellowColour,
              ),
              Container(
                height: 100,
                color: yellowColour,
              ),
             
            ],
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/landing3.avif'),
                  fit: BoxFit.cover,
                ),
              ),
         
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                // Bottom wave shape
                Positioned.fill(
                  child: CustomPaint(
                    painter: BottomWavePainter(
                      color:  buttonColour,
                    ),
                  ),
                ),
                
                // Content
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Delivery at your\nDoorstep',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E4052),
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Get your clean clothes delivered right to your doorstep, hassle-free and on-time!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF5C6B7A),
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildPageIndicator(true),
                          const SizedBox(width: 8),
                          _buildNavigationButton(),
                          const SizedBox(width: 8),
                          _buildPageIndicator(false),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(bool isActive) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF2E4052) : const Color(0xFF5C6B7A),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }

  Widget _buildNavigationButton() {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFF2E4052),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
    );
  }


}



class BottomWavePainter extends CustomPainter {
  final Color color;
  
  BottomWavePainter({required this.color});
  
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
      
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, size.height * 0.3 )
      ..quadraticBezierTo(
        size.width * 0.25, 
        size.height * 0.04, 
        size.width * 0.5, 
        size.height * 0.2
      )
      ..quadraticBezierTo( 
        size.width * 0.75, 
        size.height * 0.3, 
        size.width, 
        size.height * 0.1
      )
      ..lineTo(size.width, size.height)
      ..close();
      
    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

