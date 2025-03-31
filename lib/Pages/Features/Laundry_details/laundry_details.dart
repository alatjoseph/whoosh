import 'package:flutter/material.dart';
import 'package:whoosh/Widgets/Features/Laundry/laundryDetail_imageCard.dart';

class LaundryDetailsScreen extends StatelessWidget {
  const LaundryDetailsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              LaundryPage_ImageCard(title: title, constraints: constraints),
              AvatarListWidget()
            ],
          ),
        ),
      );
    });
  }
}

class AvatarListWidget extends StatefulWidget {
  @override
  _AvatarListWidgetState createState() => _AvatarListWidgetState();
}

class _AvatarListWidgetState extends State<AvatarListWidget> {
  int _selectedIndex = -1;

  final List<Map<String, dynamic>> avatars = [
    {'name': 'John Doe', 'image': 'assets/john_doe.jpg', 'details': 'Detail 1: John\'s details...'},
    {'name': 'Jane Smith', 'image': 'assets/jane_smith.jpg', 'details': 'Detail 2: Jane\'s details...'},
    {'name': 'Sam Wilson', 'image': 'assets/sam_wilson.jpg', 'details': 'Detail 3: Sam\'s details...'},
    // Add more avatars here
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0, // Height of the horizontal scroll area
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
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                     backgroundColor: _selectedIndex == index ? Colors.yellow : Colors.grey,
                     radius: 50,
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage(avatars[index]['image']),
                     
                      child: _selectedIndex == index
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        if (_selectedIndex != -1)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              avatars[_selectedIndex]['details'],
              style: TextStyle(fontSize: 16),
            ),
          ),
      ],
    );
  }
}
