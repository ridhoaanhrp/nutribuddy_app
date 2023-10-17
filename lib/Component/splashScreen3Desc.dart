import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Deskripsi extends StatelessWidget {
  const Deskripsi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 540,
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage("gambar/splashScreen2.png"),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Text(
            "Lakukan kegiatan yang membuat anda berkeringat",
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w600, height: 1.5),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Text(
            "Lakukan kegiatan yang positif dari hal hal yang sepele seperti makan makan yang bergizi dan berolahraga. Ayo gunakan aplikasi Nutribuddy.",
            style: GoogleFonts.montserrat(
                fontSize: 13, fontWeight: FontWeight.w400, height: 2),
          ),
        ),
      ],
    );
  }
}
