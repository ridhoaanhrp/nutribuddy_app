import 'package:flutter/material.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  _RecommendationState createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Padding(
      padding: EdgeInsets.only(
          top: height * 0.01, left: width * 0.06, right: width * 0.06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Rekomendasi",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          Container(
            width: width * 0.25,
            height: height * 0.04,
            decoration: BoxDecoration(
                color: const Color(0xFFFFC60E),
                borderRadius: BorderRadius.circular(7)),
            child: const Center(
                child: Text(
              "Vitamin D",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
