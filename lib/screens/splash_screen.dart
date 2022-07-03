import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/configs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkAuth();
  }

  void checkAuth() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).popAndPushNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(),
            // StylishNames(fistName: 'WEL', lastName: 'COME'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Image.asset(
                    "assets/programming.png",
                    height: width * 0.5,
                    width: width * 0.5,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: DefaultTextStyle(
                    style: GoogleFonts.firaSans(
                      fontSize: 43,
                      color: Colors.black,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          AppConfigs.appName,
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                      repeatForever: true,
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              padding: EdgeInsets.only(left: width * 0.25, bottom: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(width: 10.0, height: 100.0),
                  Text(
                    'BE',
                    style: GoogleFonts.firaCode(
                      color: Colors.indigo.shade400,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(width: 20.0, height: 80.0),
                  DefaultTextStyle(
                    style: GoogleFonts.firaSans(
                        fontSize: 30, color: Colors.red.withOpacity(0.7)),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText('AWESOME'),
                        RotateAnimatedText('OPTIMISTIC'),
                        RotateAnimatedText('DIFFERENT'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
