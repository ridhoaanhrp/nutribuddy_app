import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/services.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  PageController controller = PageController();

  onchanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  splashScreen1(String image, String title, String desc) {
    final bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: bodyWidth,
            height: bodyHeight * 0.7,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: bodyHeight * 0.01,
          ),
          Container(
            width: bodyWidth,
            height: bodyHeight * 0.1,
            padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.025),
            child: AutoSizeText(
              title,
              presetFontSizes: const [23, 16, 13, 10],
              maxLines: 2,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: "Montserrat"),
            ),
          ),
          SizedBox(
            height: bodyHeight * 0.01,
          ),
          Container(
            width: bodyWidth,
            height: bodyHeight * 0.25,
            padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.025),
            child: AutoSizeText(
              desc,
              presetFontSizes: const [13, 11, 10, 9],
              maxLines: 4,
              style: const TextStyle(fontFamily: "Montserrat", height: 2),
            ),
          ),
        ],
      ),
    );
  }

  splashScreen2(String image, String title, String desc) {
    final bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: bodyWidth,
            height: bodyHeight * 0.687,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: bodyHeight * 0.02,
          ),
          Container(
            width: bodyWidth,
            height: bodyHeight * 0.1,
            padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.025),
            child: AutoSizeText(
              title,
              presetFontSizes: const [23, 16, 13, 10],
              maxLines: 2,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: "Montserrat"),
            ),
          ),
          SizedBox(
            height: bodyHeight * 0.01,
          ),
          Container(
            width: bodyWidth,
            height: bodyHeight * 0.25,
            padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.025),
            child: AutoSizeText(
              desc,
              presetFontSizes: const [13, 11, 10, 9],
              maxLines: 4,
              style: const TextStyle(fontFamily: "Montserrat", height: 2),
            ),
          ),
        ],
      ),
    );
  }

  splashScreen3(String image, String title, String desc) {
    final bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: bodyWidth,
            height: bodyHeight * 0.697,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: bodyHeight * 0.01,
          ),
          Container(
            width: bodyWidth,
            height: bodyHeight * 0.1,
            padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.025),
            child: AutoSizeText(
              title,
              presetFontSizes: const [23, 16, 13, 10],
              maxLines: 2,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: "Montserrat"),
            ),
          ),
          SizedBox(
            height: bodyHeight * 0.01,
          ),
          Container(
            width: bodyWidth,
            height: bodyHeight * 0.25,
            padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.025),
            child: AutoSizeText(
              desc,
              presetFontSizes: const [13, 11, 10, 9],
              maxLines: 4,
              style: const TextStyle(fontFamily: "Montserrat", height: 2),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    final bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: PageView(
              controller: controller,
              children: [
                splashScreen1(
                    "gambar/splashScreen1.png",
                    "Hidup Sehat Dimulai Dari Sekarang",
                    "Kesehatan adalah jalan terbaik untuk membuat imun tubuh meningkat dan kuat di dalam semua kondisi cuaca, maka dari itu tingkatkan kesehatan."),
                splashScreen2(
                    "gambar/splashScreen2.png",
                    "Lakukan kegiatan yang membuat anda berkeringat",
                    "Lakukan kegiatan yang positif dari hal hal yang sepele seperti makan makan yang bergizi dan berolahraga. Ayo gunakan aplikasi Nutribuddy."),
                splashScreen3(
                    "gambar/splashScreen3.png",
                    "Buat dirimu nampak sehat dan bugar",
                    "Dengan adanya aplikasi ini kesehatan anda dapat di track untuk menghitung kandungan mikronutrien sehingga dapat terjaga di tengah pandemi")
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: bodyWidth * 0.029,
                    vertical: bodyHeight * 0.025),
                child: Row(
                  children: [
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                        dotHeight: 8.48,
                        dotWidth: 8.48,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.blue,
                      ),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceOut),
                    ),
                    SizedBox(
                      width: bodyWidth * 0.62,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: bodyWidth * 0.01, right: bodyWidth * 0.01),
                        child: GestureDetector(
                          onTap: (() {
                            if (controller.page == 0 || controller.page == 1) {
                              controller.animateToPage(++currentPage,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.bounceOut);
                            }
                            Navigator.push(
                                context,
                                PageTransition(
                                  child: const loginScreen(),
                                  type: PageTransitionType.rightToLeft,
                                ));
                          }),
                          child: Image.asset("gambar/buttonSkip.png"),
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
