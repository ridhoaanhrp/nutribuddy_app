import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityDetail extends StatelessWidget {
  const ActivityDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          top: height * 0.02, left: width * 0.02, right: width * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Rincian Kegiatan",
            style: GoogleFonts.montserrat(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 35, 35, 35)),
          ),
          Container(
            height: 30,
            width: 79,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 253, 252, 247),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "June",
                  style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff44B4FF)),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Color(0xff44B4FF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
