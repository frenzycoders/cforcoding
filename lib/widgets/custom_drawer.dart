import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade100,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/programming.png",
                    height: 60,
                    width: 60,
                  ),
                  Text(
                    'C FOR CODING',
                    style: GoogleFonts.firaSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.blueGrey),
                  ),
                  Text(
                    'By frenzycoders',
                    style: GoogleFonts.firaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.person_pin,
              size: 30,
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.firaSans(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.code,
              size: 30,
            ),
            title: Text(
              'Developers',
              style: GoogleFonts.firaSans(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.share,
              size: 30,
            ),
            title: Text(
              'Share',
              style: GoogleFonts.firaSans(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.feedback_outlined,
              size: 30,
            ),
            title: Text(
              'Feedback',
              style: GoogleFonts.firaSans(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.privacy_tip,
              size: 30,
            ),
            title: Text(
              'Privacy Policy',
              style: GoogleFonts.firaSans(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.security_outlined,
              size: 30,
            ),
            title: Text(
              'Terms & Conditions',
              style: GoogleFonts.firaSans(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.logout,
              size: 30,
            ),
            title: Text(
              'Logout',
              style: GoogleFonts.firaSans(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}



