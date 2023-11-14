import 'package:flutter/material.dart';
import 'package:nutribuddy_app/Component/activity.dart';
import 'package:nutribuddy_app/Component/calenderSlider.dart';
import 'package:nutribuddy_app/Component/dropDownButton.dart';
import 'package:nutribuddy_app/Component/foodRecomendation.dart';
import 'package:nutribuddy_app/Component/info.dart';
import 'package:nutribuddy_app/Component/recommendation.dart';
import 'package:nutribuddy_app/Component/tabBar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _appBar = AppBar(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("gambar/Group 102.png"),
      ),
      title: const Text(
        "Shirogane Noel",
        style: TextStyle(
            fontSize: 14, fontFamily: "Montserrat", color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: Image.asset("gambar/Group 9.png"),
          onPressed: () {},
        )
      ],
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    );

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        _appBar.preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFAAD2F9), Color(0xFF3BB1FF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: _appBar,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              height: height,
              width: width,
              child: ListView(
                children: [
                  const DropDownButton(),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  const CalenderSlider(),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.loose,
                    children: [
                      Container(
                        width: width,
                        height: height * 1.8,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.09,
                                  left: width * 0.06,
                                  right: width * 0.06),
                              child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aktivitas Hari Ini",
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            const Activity(),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.01,
                                  left: width * 0.06,
                                  right: width * 0.06),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Rekomendasi Makanan",
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            const FoodRecommendation(),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            const Recommendation(),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            const TabBarDashboard(),
                          ],
                        ),
                      ),
                      const Info(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.14,
                            left: width * 0.09,
                            right: width * 0.03),
                        child: Container(
                            alignment: Alignment.centerRight,
                            width: width * 0.89,
                            height: height * 0.24,
                            color: Colors.transparent,
                            child: Image.asset(
                              "gambar/sepeda.png",
                              fit: BoxFit.contain,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
