import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/constant_widgets.dart';
import 'package:whoosh/Widgets/Global/appbar_global.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, size) {
        return ListView(
          children: [
            Global_AppBar_Widget(
                title: 'Account', backgroundColor: primaryColour, size: size),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedbox_h20,
                  Account_Item_Card(
                    icon: Icons.favorite_border,
                    size: size,
                    title: "Wishlist",
                  ),
                  Account_Item_Card(
                    icon: Icons.shopping_cart_outlined,
                    size: size,
                    title: "Saved",
                  ),
                  
                  Account_Item_Card(
                    icon: Icons.settings,
                    size: size,
                    title: "Account Settings",
                  ),
                  Account_Item_Card(
                    icon: Icons.bookmark_border,
                    size: size,
                    title: "Saved Details",
                  ),
                  Account_Item_Card(
                    icon: Icons.notifications_outlined,
                    size: size,
                    title: "Notification",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Logout',
                        style: GoogleFonts.poppins(
                            color: accountBlueColour,
                            fontSize: size.maxWidth * 0.043,
                            fontWeight: FontWeight.w500)),
                  ),
                  sizedbox_h5,
                  TextButton(
                    onPressed: () {},
                    child: Text('About Us',
                        style: GoogleFonts.poppins(
                            color: accountBlueColour,
                            fontSize: size.maxWidth * 0.043,
                            fontWeight: FontWeight.w500)),
                  ),
                  sizedbox_h5,
                  TextButton(
                    onPressed: () {},
                    child: Text('Terms of use',
                        style: GoogleFonts.poppins(
                            color: accountBlueColour,
                            fontSize: size.maxWidth * 0.043,
                            fontWeight: FontWeight.w500)),
                  ),
                  sizedbox_h5,
                  TextButton(
                    onPressed: () {},
                    child: Text('Privacy Policy',
                        style: GoogleFonts.poppins(
                            color: accountBlueColour,
                            fontSize: size.maxWidth * 0.043,
                            fontWeight: FontWeight.w500)),
                  ),
                  sizedbox_h5,
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class Account_Item_Card extends StatelessWidget {
  Account_Item_Card({
    super.key,
    required this.size,
    required this.title,
    required this.icon,
  });
  BoxConstraints size;
  String title;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18),
        child: Row(
          children: [
            Icon(
              icon,
              weight: 700,
            ),
            sizedbox_w10,
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: size.maxWidth * 0.05, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Icon(
              CupertinoIcons.chevron_right,
              color: blackColour,
              size: size.maxWidth * 0.056,
            ),
          ],
        ),
      ),
    );
  }
}
