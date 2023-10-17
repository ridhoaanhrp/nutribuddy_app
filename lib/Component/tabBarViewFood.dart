import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTabBarView extends StatefulWidget {
  const FoodTabBarView({Key? key}) : super(key: key);

  @override
  _FoodTabBarViewState createState() => _FoodTabBarViewState();
}

class _FoodTabBarViewState extends State<FoodTabBarView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: height * 0.13,
          width: width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 252, 252),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset("gambar/jeruk.png"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8, top: 20, bottom: 20),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jeruk Bali",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 35, 35, 35)),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Makanan Sarapan Pagi",
                            style: GoogleFonts.montserrat(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 35, 35, 35)),
                          )
                        ],
                      ),
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset("gambar/kalori.png",
                                color: const Color.fromARGB(255, 255, 114, 44)),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "290",
                              style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 255, 114, 44)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "09.50 Hari ini",
                          style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff44B4FF)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: height * 0.13,
          width: width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 252, 252),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset("gambar/alpukat.png"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8, top: 20, bottom: 20),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alpukat",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 35, 35, 35)),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Makanan Sarapan Pagi",
                            style: GoogleFonts.montserrat(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 35, 35, 35)),
                          )
                        ],
                      ),
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Image.asset("gambar/kalori.png",
                                color: const Color.fromARGB(255, 255, 114, 44)),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "290",
                              style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 255, 114, 44)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "09.50 Hari ini",
                          style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff44B4FF)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: height * 0.13,
          width: width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 252, 252),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset("gambar/jagung.png"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8, top: 20, bottom: 20),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jagung",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 35, 35, 35)),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Makanan Sarapan Pagi",
                            style: GoogleFonts.montserrat(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 35, 35, 35)),
                          )
                        ],
                      ),
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Image.asset("gambar/kalori.png",
                                color: const Color.fromARGB(255, 255, 114, 44)),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "290",
                              style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromARGB(255, 255, 114, 44)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "09.50 Hari ini",
                          style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff44B4FF)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
