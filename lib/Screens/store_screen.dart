import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/gridicons.dart';
import 'package:nutribuddy_app/Component/foodRecommendationSlider.dart';
import 'package:nutribuddy_app/Component/searchBarField.dart';
import 'package:nutribuddy_app/Component/tabBarVitA.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = MediaQuery.of(context).size.width;
    double bodyHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width: bodyWidth,
                padding: EdgeInsets.only(
                  top: bodyHeight * 0.02,
                ),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFAAD2F9), Color(0xFF3BB1FF)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: bodyWidth * 0.5,
                          height: bodyHeight * 0.04,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFF900E),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Rekomendasi Vitamin D",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: bodyWidth * 0.19,
                        ),
                        const Iconify(Gridicons.heart,
                            size: 35, color: Colors.white),
                        SizedBox(
                          width: bodyWidth * 0.03,
                        ),
                        const Iconify(
                          Eva.shopping_cart_fill,
                          size: 35,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: bodyHeight * 0.05,
                    ),
                    const FoodRecommendationSlider(),
                    SizedBox(
                      height: bodyHeight * 0.1,
                    ),
                    Stack(
                      clipBehavior: Clip.hardEdge,
                      children: [
                        Container(
                          width: bodyWidth,
                          height: bodyHeight,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: bodyHeight * 0.1,
                                    left: bodyWidth * 0.06,
                                    right: bodyWidth * 0.06),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Text(
                                        "Jelajah",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: Iconify(
                                        AntDesign.fire_filled,
                                        color: Color(0xFFFF900E),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Text(
                                        "Satuan mg",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xFFFF900E)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: bodyHeight * 0.03,
                              ),
                              TabBar(
                                  isScrollable: true,
                                  unselectedLabelColor: Colors.black,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  labelStyle: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  unselectedLabelStyle: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xFFFFC60E)),
                                  tabs: [
                                    Container(
                                      width: bodyWidth * 0.3,
                                      height: bodyHeight * 0.05,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: const Color(0xFFFFC60E),
                                              width: 1)),
                                      child: const Center(
                                          child: Text("Vitamin A")),
                                    ),
                                    Container(
                                      width: bodyWidth * 0.3,
                                      height: bodyHeight * 0.05,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: const Color(0xFFFFC60E),
                                              width: 1)),
                                      child: const Center(
                                          child: Text("Vitamin B")),
                                    ),
                                    Container(
                                      width: bodyWidth * 0.3,
                                      height: bodyHeight * 0.05,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: const Color(0xFFFFC60E),
                                              width: 1)),
                                      child: const Center(
                                          child: Text("Vitamin C")),
                                    ),
                                    Container(
                                      width: bodyWidth * 0.3,
                                      height: bodyHeight * 0.05,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: const Color(0xFFFFC60E),
                                              width: 1)),
                                      child: const Center(
                                          child: Text("Vitamin D")),
                                    ),
                                  ]),
                              Container(
                                width: bodyWidth,
                                height: bodyHeight * 0.4,
                                child: TabBarView(children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: bodyHeight * 0.01),
                                    child: const TabBarVitA(),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: bodyHeight * 0.01),
                                    child: const TabBarVitA(),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: bodyHeight * 0.01),
                                    child: const TabBarVitA(),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: bodyHeight * 0.01),
                                    child: const TabBarVitA(),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: bodyHeight * -0.04,
                          left: bodyWidth * 0.096,
                          child: const SearchBarField(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
