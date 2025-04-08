import 'package:flutter/material.dart';
import 'package:whoosh/Pages/Features/account/account_page.dart';
import 'package:whoosh/Pages/Features/home/home_screen.dart';
import 'package:whoosh/Utils/colours.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);

  final List<Widget> pages = [
      const HomeScreen(),
      const Center(child: Text('Activities')),
      const Center(child: Text('Cart')),
      const AccountPage(),
  ];

  void navigateToPage(int index) {
    selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, child) {
          return IndexedStack(
            index: index,
            children: pages,
          );
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, child) {
          return BottomNavigationBar(
            backgroundColor: whiteColour,
            currentIndex: index,
            onTap: navigateToPage,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: blackColour,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.list_outlined), label: 'Activities'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Account'),
            ],
          );
        },
      ),
    );
  }
}
