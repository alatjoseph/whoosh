import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:whoosh/Utils/colours.dart';

class ImageSlider extends StatelessWidget {
   ImageSlider({super.key,required this.size});
  final BoxConstraints size;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return 
     Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: size.maxWidth*0.4 , // Adjust height as needed
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                       color: Colors.green
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3, // Total number of images
              effect: const ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: buttonColour,
                dotColor: Colors.grey,
                expansionFactor: 3,
                spacing: 6,
              ),
            ),
          ],
        ),
      )
    ;
  }
}
