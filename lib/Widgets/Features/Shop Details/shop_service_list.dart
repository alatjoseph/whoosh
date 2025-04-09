import 'package:flutter/material.dart';
import 'package:whoosh/Widgets/Features/LaundryService/dress_Item_card.dart';

import '../../../Utils/constant_widgets.dart';

class ShopServiceListWidget extends StatefulWidget {
  ShopServiceListWidget({required this.size});
  final BoxConstraints size;

  @override
  _ShopServiceListWidgetState createState() => _ShopServiceListWidgetState();
}

class _ShopServiceListWidgetState extends State<ShopServiceListWidget> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> avatars = [
    {
      'name': 'John Doe',
      'image': 'assets/john_doe.jpg',
      'details': 'Detail 1: John\'s details...'
    },
    {
      'name': 'Jane Smith',
      'image': 'assets/jane_smith.jpg',
      'details': 'Detail 2: Jane\'s details...'
    },
    {
      'name': 'Sam Wilson',
      'image': 'assets/sam_wilson.jpg',
      'details': 'Detail 3: Sam\'s details...'
    },
    {
      'name': 'Sam Wilson',
      'image': 'assets/sam_wilson.jpg',
      'details': 'Detail 3: Sam\'s details...'
    },
    {
      'name': 'Sam Wilson',
      'image': 'assets/sam_wilson.jpg',
      'details': 'Detail 3: Sam\'s details...'
    }
    // Add more avatars here
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  8.0),
          child: SizedBox(
            height: widget.size.maxWidth * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: avatars.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: _selectedIndex == index
                              ? Colors.yellow
                              : Colors.transparent,
                          radius: widget.size.maxWidth * .1,
                          child: CircleAvatar(
                            radius: widget.size.maxWidth * .09,
                            backgroundImage:
                                const AssetImage('assets/images/logo.png'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Dry Cleaning',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        if (_selectedIndex != -1)
         
              sizedbox_h20,
              ...List.generate(22, (index) => SingleChildScrollView
              (child: DressItemCard(widget: widget))),
           
      ],
    );
  }
}
