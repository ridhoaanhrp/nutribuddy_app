import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutribuddy_app/Component/tabBarViewActivity.dart';
import 'package:nutribuddy_app/Component/tabBarViewFood.dart';

class StatisticTabBar extends StatefulWidget {
  const StatisticTabBar({Key? key}) : super(key: key);

  @override
  _StatisticTabBarState createState() => _StatisticTabBarState();
}

class _StatisticTabBarState extends State<StatisticTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  int selectedIndex = 0;

  @override
  void initState() {
    tabController =
        TabController(length: 2, initialIndex: selectedIndex, vsync: this);
    tabController.addListener(handleTabSelection);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void handleTabSelection() {
    if (tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      padding: EdgeInsets.only(
          top: height * 0.02, left: width * 0.02, right: width * 0.02),
      child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TabBar(
                labelPadding: const EdgeInsets.only(left: 0),
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.amber,
                ),
                tabs: [
                  Container(
                    height: height * 0.04,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Makanan",
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Aktivitas",
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 252, 252),
                    borderRadius: BorderRadius.circular(10)),
                child: TabBarView(children: [
                  Container(
                    width: width,
                    height: height * 0.5,
                    child: const FoodTabBarView(),
                  ),
                  Container(
                    width: width,
                    height: height * 0.5,
                    child: const ActivityTabBarView(),
                  ),
                ]),
              )
            ],
          )),
    );
  }
}
