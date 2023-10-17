import 'package:flutter/material.dart';
import 'package:nutribuddy_app/Component/splashScreen3Controller.dart';

import '../Component/splashScreen3Desc.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          const Deskripsi(),
          Controller(),
        ],
      ),
    );
  }
}
