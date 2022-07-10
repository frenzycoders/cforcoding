import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StylishIconButton extends StatelessWidget {
  StylishIconButton({
    Key? key,
    required this.imageUrl,
    required this.buttonName,
    required this.onTap,
  }) : super(key: key);
  String imageUrl;
  String buttonName;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: width > 360 ? 100 : 80,
        width: width > 360 ? 100: 84,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              height: 50,
              width: 50,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              buttonName,
              style: GoogleFonts.firaSans(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
