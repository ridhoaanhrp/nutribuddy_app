import 'package:flutter/material.dart';
import 'package:nutribuddy_app/Screens/self_assesment.dart';
import 'package:page_transition/page_transition.dart';

class Controller extends StatelessWidget {
  const Controller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      child: const SelfAssesment(),
                      type: PageTransitionType.rightToLeft,
                    ));
              },
              child: Image.asset("gambar/buttonSkip.png"),
            )),
      ],
    );
  }
}
