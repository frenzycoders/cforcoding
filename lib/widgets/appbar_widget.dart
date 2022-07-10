import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/configs.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);
  Function openDrawer;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: width > 360 ? 8 : 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              openDrawer();
            },
            child: Image.asset(
              "assets/menu.png",
              height: width > 360 ? 50 : 30,
              width: width > 360 ? 50 : 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/programming.png",
                height: width > 360 ? 32 : 20,
                width: width > 360 ? 32 : 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                AppConfigs.appName.toUpperCase(),
                style: GoogleFonts.firaSans(
                  fontSize: width > 360 ? 25 : 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/bell.png",
              height: width > 360 ? 50 : 30,
              width: width > 360 ? 50 : 30,
            ),
          )
        ],
      ),
    );
  }
}
