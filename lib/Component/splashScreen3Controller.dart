import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutribuddy_app/Screens/self_assesment.dart';
import 'package:page_transition/page_transition.dart';

class Controller extends StatelessWidget {
  const Controller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                      child: const SelfAssesment(),
                      type: PageTransitionType.rightToLeft,
                    ));
              },
              style: ButtonStyle(
                alignment: Alignment.centerLeft,
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 0)),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor:
                    MaterialStateProperty.all(Colors.black.withOpacity(0.0)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Skip',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(62, 175, 252, 1)),
                  ), // <-- Text
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.trending_flat_rounded,
                    size: 35,
                    color: Color.fromRGBO(62, 175, 252, 1),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
