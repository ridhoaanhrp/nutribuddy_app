import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityTabBarView extends StatefulWidget {
  const ActivityTabBarView({Key? key}) : super(key: key);

  @override
  _ActivityTabBarViewState createState() => _ActivityTabBarViewState();
}

class _ActivityTabBarViewState extends State<ActivityTabBarView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 97,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 252, 252),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset("gambar/Bersepeda.png"),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 8, top: 20, bottom: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bersepeda",
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 35, 35, 35)),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          "Bersepeda disore ini",
                          style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 35, 35, 35)),
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                width: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset("gambar/lokasi.png",
                              color: const Color.fromARGB(255, 255, 114, 44)),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "16 km",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 255, 114, 44)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "16.30 Hari ini",
                        style: GoogleFonts.montserrat(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff44B4FF)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 97,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 252, 252),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset("gambar/Berjemur.png"),
              ),
              const SizedBox(
                width: 40,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 8, top: 20, bottom: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Berjemur",
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 35, 35, 35)),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          "Berjemur dipagi hari",
                          style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 35, 35, 35)),
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                width: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "gambar/cuaca.png",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "15 Menit",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 255, 114, 44)),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
