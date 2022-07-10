import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestElement extends StatelessWidget {
  const TestElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        height: 170,
        width: width,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "assets/trophy.png",
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Questions: ',
                        style:
                            GoogleFonts.firaSans(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '100',
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo.shade400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Points: ',
                        style:
                            GoogleFonts.firaSans(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '100',
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo.shade400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Rate: ',
                        style:
                            GoogleFonts.firaSans(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '1 point/q',
                        style: GoogleFonts.firaSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo.shade400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
