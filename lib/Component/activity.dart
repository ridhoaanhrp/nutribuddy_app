import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Container(
      width: width * 0.87,
      height: height * 0.21,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("gambar/containerAktivitas.png"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              colors: [Color(0xFF34ADFD), Color(0xFFFFFFFF)])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(
                  top: height * 0.02, right: width * 0.04, left: width * 0.04),
              child: const AutoSizeText(
                "Bersepeda di Pagi Hari",
                minFontSize: 9,
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                  top: height * 0.01, right: width * 0.04, left: width * 0.04),
              child: Row(
                children: [
                  Image.asset(
                    "gambar/bullet.png",
                    fit: BoxFit.contain,
                  ),
                  const AutoSizeText(
                    "   120 Kalori/menit",
                    minFontSize: 9,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                  top: height * 0.01, right: width * 0.04, left: width * 0.04),
              child: Row(
                children: [
                  Image.asset(
                    "gambar/bullet.png",
                    fit: BoxFit.contain,
                  ),
                  const AutoSizeText(
                    "   10 Kilometer",
                    minFontSize: 9,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                  top: height * 0.01, right: width * 0.04, left: width * 0.04),
              child: Row(
                children: [
                  Image.asset(
                    "gambar/bullet.png",
                    fit: BoxFit.contain,
                  ),
                  const AutoSizeText(
                    "   08.00 - 10.00 AM",
                    minFontSize: 9,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 16, right: 16, bottom: 20),
              child: GestureDetector(
                onTap: (() {}),
                child: Image.asset("gambar/buttonCekRute.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
