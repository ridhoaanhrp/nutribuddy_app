import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:nutribuddy_app/Component/panelItem.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HistoryFood extends StatefulWidget {
  const HistoryFood({Key? key}) : super(key: key);

  @override
  State<HistoryFood> createState() => _HistoryFoodState();
}

class _HistoryFoodState extends State<HistoryFood> {
  int selectedIndex = 2;

  DateTime selectedDate = DateTime.now();
  DatePickerController controllerDate = DatePickerController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SlidingUpPanel(
        maxHeight: height * 0.8,
        minHeight: height * 0.15,
        panel: Column(
          children: const [PanelItem()],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 159, 217, 255),
              Color.fromARGB(255, 33, 166, 255)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: width * 0.04, left: width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Usia",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        "Rata-rata Per Hari",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: width * 0.04,
                          left: width * 0.04,
                          bottom: height * 0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("gambar/Group 102.png"),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    "12 Tahun",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ]),
                          ),
                          Container(
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("gambar/kalori.png"),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    "3970 IU",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  width: width,
                  height: height * 0.4,
                  child: LineChart(LineChartData(
                      minY: 1000,
                      maxY: 5000,
                      minX: 0,
                      maxX: 5,
                      titlesData: FlTitlesData(
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          bottomTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false))),
                      gridData: FlGridData(
                          show: true,
                          getDrawingHorizontalLine: (value) {
                            return FlLine(
                                color: const Color(0xFFFFFFFF), strokeWidth: 1);
                          },
                          drawVerticalLine: false,
                          getDrawingVerticalLine: (value) {
                            return FlLine(
                                color: const Color(0xFFC9C9C9), strokeWidth: 1);
                          }),
                      borderData: FlBorderData(
                          show: true,
                          border: const Border.symmetric(
                            horizontal: BorderSide(
                                color: const Color(0xFFFFFFFF), width: 1),
                          )),
                      lineBarsData: [
                        LineChartBarData(
                            spots: [
                              const FlSpot(0, 3000),
                              const FlSpot(1, 3200),
                              const FlSpot(2, 3500),
                              const FlSpot(3, 2800),
                              const FlSpot(4, 3100),
                              const FlSpot(5, 3400),
                            ],
                            isCurved: true,
                            color: const Color(0xFFFFFFFF),
                            // gradient: const LinearGradient(
                            //     colors: [
                            //       Color.fromARGB(255, 159, 217, 255),
                            //       Color.fromARGB(255, 33, 166, 255)
                            //     ],
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight),
                            barWidth: 1,
                            belowBarData: BarAreaData(
                                show: true,
                                gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(0, 185, 184, 184),
                                      Colors.white
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter)))
                      ])),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.02),
                  width: width,
                  height: height * 0.15,
                  child: DatePicker(
                    DateTime.now(),
                    width: width * 0.14,
                    height: height * 0.08,
                    locale: "en_Us",
                    controller: controllerDate,
                    initialSelectedDate: DateTime.now(),
                    daysCount: DateTime.monthsPerYear,
                    deactivatedColor: Colors.white,
                    selectionColor: Colors.white,
                    selectedTextColor: Color.fromARGB(255, 33, 166, 255),
                    dateTextStyle: GoogleFonts.montserrat(
                        fontSize: 20, color: Colors.white),
                    dayTextStyle: GoogleFonts.montserrat(
                        fontSize: 13, color: Colors.white),
                    monthTextStyle: GoogleFonts.montserrat(
                        fontSize: 13, color: Colors.white),
                    onDateChange: (date) {
                      setState(() {
                        selectedDate = date;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.02, vertical: height * 0.01),
                  width: width,
                  height: height * 0.1,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Target per Hari",
                            style: GoogleFonts.montserrat(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              const Iconify(
                                AntDesign.fire_filled,
                                color: Colors.white,
                              ),
                              Text(
                                "4000 IU",
                                style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: width * 0.7,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width * 0.042,
                              height: height * 0.02,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            const Text(
                              "Hari ini",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Container(
                              width: width * 0.042,
                              height: height * 0.02,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFC60E),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            const Text(
                              "Aktivitas",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Container(
                              width: width * 0.042,
                              height: height * 0.02,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFF900E),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            const Text(
                              "Pemeriksaan",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
