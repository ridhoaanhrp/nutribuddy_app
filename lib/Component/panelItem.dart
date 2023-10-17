import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutribuddy_app/Component/activityDetail.dart';
import 'package:nutribuddy_app/Component/statisticTabBar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PanelItem extends StatelessWidget {
  const PanelItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Column(
        children: [
          Container(
            width: width,
            height: height * 0.12,
            padding: EdgeInsets.only(
                top: height * 0.02,
                left: width * 0.02,
                right: width * 0.02,
                bottom: height * 0.02),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 150, 211, 252),
              Color.fromARGB(255, 33, 166, 255)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Kekurangan",
                      style: GoogleFonts.montserrat(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.04,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "vitamin D",
                          style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Karbo",
                      style: GoogleFonts.montserrat(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "gambar/kalori.png",
                          width: 13,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "12 mg",
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    LinearPercentIndicator(
                      width: 90,
                      lineHeight: 2.0,
                      percent: 0.7,
                      progressColor: const Color.fromARGB(255, 255, 255, 255),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Protein",
                      style: GoogleFonts.montserrat(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Image.asset("gambar/fish.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "12 gram",
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    LinearPercentIndicator(
                      width: 90,
                      lineHeight: 2.0,
                      percent: 0.7,
                      progressColor: const Color.fromARGB(255, 255, 255, 255),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Kalsium",
                      style: GoogleFonts.montserrat(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Image.asset("gambar/fish.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "12 gram",
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    LinearPercentIndicator(
                      width: 90,
                      lineHeight: 2.0,
                      percent: 0.7,
                      progressColor: const Color.fromARGB(255, 255, 255, 255),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Container(
              height: height * 0.01,
              width: width * 0.3,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 183, 183, 183),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          const ActivityDetail(),
          SizedBox(height: height * 0.02),
          const StatisticTabBar(),
          SizedBox(
            height: height * 0.02,
          ),
        ],
      ),
    );
  }
}
