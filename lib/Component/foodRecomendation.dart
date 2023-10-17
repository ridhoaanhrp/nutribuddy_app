import 'package:flutter/material.dart';

class FoodRecommendation extends StatefulWidget {
  const FoodRecommendation({Key? key}) : super(key: key);

  @override
  _FoodRecommendationState createState() => _FoodRecommendationState();
}

class _FoodRecommendationState extends State<FoodRecommendation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: height * 0.01, left: width * 0.06, right: width * 0.06),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: width * 0.36,
                    height: height * 0.27,
                    padding: EdgeInsets.only(
                        top: height * 0.03,
                        left: width * 0.04,
                        right: width * 0.03),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("gambar/bgRekomendasiMakanan.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: height * 0),
                            child: const Text(
                              "Sarapan Pagi",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.01),
                            child: Row(
                              children: [
                                Image.asset("gambar/bullet.png"),
                                const Text(
                                  " 08:00 - 10:00 AM",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 11,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    width: width * 0.52,
                    height: height * 0.27,
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        left: width * 0.06,
                        right: width * 0.01),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Total IU",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("gambar/kalori.png"),
                              const Text(
                                "  290 Kalori",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF900E)),
                              ),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Container(
                                width: width * 0.15,
                                height: height * 0.04,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFFFC60E),
                                    borderRadius: BorderRadius.circular(7)),
                                child: const Center(
                                    child: Text(
                                  "50 K",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Container(
                            height: height * 0.05,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: height * 0.05,
                                  child: Image.asset(
                                    "gambar/iconIkanNasi.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nasi + Ikan",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Karbohidrat",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 8,
                                            color: Color(0xFF7D7D7D)),
                                      )
                                    ]),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      " Rp 3K",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontFamily: "Montserrat",
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "15 Kalori",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFF900E)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Container(
                            height: height * 0.05,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: height * 0.05,
                                  child: Image.asset(
                                    "gambar/iconJagung.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jagung",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Karbohidrat",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 8,
                                            color: Color(0xFF7D7D7D)),
                                      )
                                    ]),
                                SizedBox(
                                  width: width * 0.07,
                                ),
                                const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      " Rp 3K",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontFamily: "Montserrat",
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "15 Kalori",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFF900E)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            top: height * 0.07,
            left: width * 0.07,
            bottom: height * -0.01,
            child: Container(
              height: height * 0.23,
              width: width * 0.45,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("gambar/gambarMakanan.png"),
                      fit: BoxFit.cover)),
            ))
      ],
    );
  }
}
