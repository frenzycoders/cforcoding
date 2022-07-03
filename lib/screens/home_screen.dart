import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.home_outlined, size: 45,)
                  ),
                  Image.asset(
                    "assets/programming.png",
                    height: 50,
                    width: 50,
                  ),
                  // InkWell(
                  //   onTap: () {},
                  //   child: const FaIcon(
                  //     FontAwesomeIcons.solidBell,
                  //     size: 45,
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
