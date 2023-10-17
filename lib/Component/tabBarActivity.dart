import 'package:flutter/material.dart';

class TabBarActivity extends StatefulWidget {
  const TabBarActivity({Key? key}) : super(key: key);

  @override
  _TabBarActivityState createState() => _TabBarActivityState();
}

class _TabBarActivityState extends State<TabBarActivity> {
  List<Map<String, dynamic>> listActivityInfo = [
    {
      "ImageURL": "gambar/sepeda.png",
      "Activity": "Bersepeda",
      "Description": "Bersepeda di pagi hari",
      "IconURL": "gambar/lokasi.png",
      "Information": 20,
      "Time": "07.00"
    },
    {
      "ImageURL": "gambar/Berjemur.png",
      "Activity": "Berjemur",
      "Description": "Berjemur di pagi hari",
      "IconURL": "gambar/cuaca.png",
      "Information": 15,
      "Time": "08.00"
    },
    {
      "ImageURL": "gambar/sepeda.png",
      "Activity": "Bersepeda",
      "Description": "Bersepeda di pagi hari",
      "IconURL": "gambar/lokasi.png",
      "Information": 20,
      "Time": "07.00"
    },
    {
      "ImageURL": "gambar/Berjemur.png",
      "Activity": "Berjemur",
      "Description": "Berjemur di pagi hari",
      "IconURL": "gambar/cuaca.png",
      "Information": 15,
      "Time": "08.00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return ListView(
      children: listActivityInfo.map((data) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Image.asset(
                    "${data['ImageURL']}",
                    width: width * 0.127,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${data['Activity']}",
                                style: const TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: width * 0.34,
                              ),
                              Image.asset("${data['IconURL']}"),
                              Text(
                                "${data['Information']} Menit",
                                style: const TextStyle(
                                    color: Color(0xFFFF900E),
                                    fontFamily: "Montserrat",
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${data['Description']}",
                                  style: const TextStyle(
                                      fontFamily: "Montserrat", fontSize: 11),
                                ),
                                Text(
                                  "${data['Time']} hari ini",
                                  style: const TextStyle(
                                      color: Color(0xFF39B0FF),
                                      fontFamily: "Montserrat",
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
