import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StylishNames extends StatelessWidget {
  StylishNames({
    Key? key,
    required this.fistName,
    required this.lastName,
  }) : super(key: key);
  String fistName;
  String lastName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            fistName,
            style: GoogleFonts.firaSans(
              color: Colors.red.withOpacity(0.8),
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            lastName,
            style: GoogleFonts.firaSans(
              color: Colors.indigo.withOpacity(0.8),
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
