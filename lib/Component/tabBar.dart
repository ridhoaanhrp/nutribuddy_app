import 'package:flutter/material.dart';
import 'package:nutribuddy_app/Component/tabBarActivity.dart';
import 'package:nutribuddy_app/Component/tabBarFood.dart';

class TabBarDashboard extends StatefulWidget {
  const TabBarDashboard({Key? key}) : super(key: key);

  @override
  _TabBarDashboardState createState() => _TabBarDashboardState();
}

class _TabBarDashboardState extends State<TabBarDashboard>
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

  List<Map<String, dynamic>> listColor = [
    {
      "Colors": const Color(0xFFFFF0EC),
    },
    {
      "Colors": const Color(0xFFFFF2CC),
    },
    {
      "Colors": const Color(0xFFDCF1FF),
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.blue),
            tabs: [
              Container(
                width: width * 0.25,
                height: height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blue, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("gambar/IconMakanan.png"),
                    const Text(" Food")
                  ],
                ),
              ),
              Container(
                width: width * 0.3,
                height: height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blue, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "gambar/IconAktivitas.png",
                    ),
                    const Text("Aktivitas")
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: height * 0.01),
            width: width,
            height: height * 0.7,
            child: TabBarView(children: [
              Container(
                height: height * 0.25,
                width: width,
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: const TabBarFood(),
              ),
              Container(
                  width: width,
                  height: height * 0.05,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                  child: const TabBarActivity())
            ]),
          )
        ],
      ),
    );
  }
}
