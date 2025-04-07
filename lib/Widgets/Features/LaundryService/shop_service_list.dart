
import 'package:flutter/material.dart';
import 'package:whoosh/Widgets/Features/LaundryService/dress_Item_card.dart';

import '../../../Utils/constant_widgets.dart';
class AvatarListWidget extends StatefulWidget {
  AvatarListWidget({required this.size});
  final BoxConstraints size;

  @override
  _AvatarListWidgetState createState() => _AvatarListWidgetState();
}

class _AvatarListWidgetState extends State<AvatarListWidget> {
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
        SizedBox(
          height: widget.size.maxWidth *
              0.3, // Height of the horizontal scroll area
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: _selectedIndex == index
                            ? Colors.yellow
                            : Colors.transparent,
                        radius: widget.size.maxWidth * .11,
                        child: CircleAvatar(
                          radius: widget.size.maxWidth * .097,
                          backgroundImage:
                              const AssetImage('assets/images/logo.png'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'service[index]',
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
        if (_selectedIndex != -1) sizedbox_h20,
        ...List.generate(4, (index) => DressItemCard(widget: widget)),
      ],
    );
  }
}
