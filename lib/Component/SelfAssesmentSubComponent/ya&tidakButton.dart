import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutribuddy_app/Screens/navbar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class YadanTidak extends StatelessWidget {
  const YadanTidak({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            width: 170,
            child: TextButton(
              onPressed: () {
                Alert(
                  context: context,
                  type: AlertType.success,
                  title: "Input Sukses",
                  desc:
                      "Self assesment berhasil di input dan dimasukan ke database.",
                  style: const AlertStyle(
                    descStyle: TextStyle(
                        fontSize: 13,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.normal),
                  ),
                  buttons: [
                    DialogButton(
                        child: const Text(
                          "Lanjut",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                child: const MainNavBar(),
                                type: PageTransitionType.rightToLeft,
                              ));
                        })
                  ],
                ).show();
              },
              child: Text('Iya',
                  style: GoogleFonts.montserrat(
                      color: const Color.fromARGB(255, 255, 255, 255))),
            )),
        Container(
            width: 170,
            child: TextButton(
              onPressed: () {
                Alert(
                  context: context,
                  type: AlertType.success,
                  title: "Input Sukses",
                  desc:
                      "Self assesment berhasil di input dan dimasukan ke database.",
                  style: const AlertStyle(
                    descStyle: TextStyle(
                        fontSize: 13,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.normal),
                  ),
                  buttons: [
                    DialogButton(
                        child: const Text(
                          "Lanjut",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                child: const MainNavBar(),
                                type: PageTransitionType.rightToLeft,
                              ));
                        })
                  ],
                ).show();
              },
              child: Text('Tidak',
                  style: GoogleFonts.montserrat(
                      color: const Color.fromARGB(255, 255, 255, 255))),
            )),
      ],
    );
  }
}
