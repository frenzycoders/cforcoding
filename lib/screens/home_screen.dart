import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/configs.dart';
import 'package:test/widgets/appbar_widget.dart';
import 'package:test/widgets/index.dart';
import 'package:test/widgets/stylishIconButton.dart';
import 'package:test/widgets/test_element.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void openDarwer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            AppBarWidget(
              openDrawer: openDarwer,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const ScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Services',
                        style: GoogleFonts.firaSans(
                          fontSize: width > 360 ? 30 : 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StylishIconButton(
                            imageUrl: "assets/search.png",
                            buttonName: "Search",
                            onTap: () {},
                          ),
                          StylishIconButton(
                            imageUrl: "assets/books.png",
                            buttonName: "Books",
                            onTap: () {},
                          ),
                          StylishIconButton(
                            imageUrl: "assets/patterns.png",
                            buttonName: "Patterns",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 30,
                        left: 30,
                        right: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StylishIconButton(
                            imageUrl: "assets/quiz.png",
                            buttonName: "C Quiz",
                            onTap: () {},
                          ),
                          StylishIconButton(
                            imageUrl: "assets/numberp.png",
                            buttonName: "Patterns",
                            onTap: () {},
                          ),
                          StylishIconButton(
                            imageUrl: "assets/playground.png",
                            buttonName: "Playground",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 30,
                        left: 30,
                        right: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StylishIconButton(
                            imageUrl: "assets/quiz.png",
                            buttonName: "C Quiz",
                            onTap: () {},
                          ),
                          StylishIconButton(
                            imageUrl: "assets/numberp.png",
                            buttonName: "Patterns",
                            onTap: () {},
                          ),
                          StylishIconButton(
                            imageUrl: "assets/playground.png",
                            buttonName: "Playground",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 30, top: 10, right: 30),
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Live Test',
                            style: GoogleFonts.firaSans(
                              fontSize: width > 360 ? 30 : 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // OutlinedButton(
                          //   onPressed: () {},
                          //   child: Text(
                          //     'See All',
                          //     style: GoogleFonts.firaSans(
                          //       fontWeight: FontWeight.w300,
                          //     ),
                          //   ),
                          // )

                          Card(
                            elevation: 3,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.indigo.shade400,
                              ),
                              child: Text(
                                'See All',
                                style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: ListView.builder(
                        physics: const ScrollPhysics(
                          parent: BouncingScrollPhysics(),
                        ),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              right: 5,
                            ),
                            child: TestElement(),
                          );
                        },
                        itemCount: 5,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Quiz Results',
                        style: GoogleFonts.firaSans(
                          fontSize: width > 360 ? 30 : 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      // height: 300,
                      width: double.infinity,
                      child: PieChartSample3(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
