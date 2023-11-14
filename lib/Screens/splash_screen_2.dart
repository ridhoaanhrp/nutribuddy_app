import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutribuddy_app/Screens/form_data_male.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    AndroidInitializationSettings androidInitialize =
        const AndroidInitializationSettings("@mipmap/ic_launcher");
    IOSInitializationSettings iOSInitialize = const IOSInitializationSettings();
    final initializationSettings =
        InitializationSettings(android: androidInitialize, iOS: iOSInitialize);
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> _showNotification() async {
    var android = const AndroidNotificationDetails("channelId", "channelName");
    var iOS = const IOSNotificationDetails();
    var platform = NotificationDetails(android: android, iOS: iOS);
    await _flutterLocalNotificationsPlugin
        .show(0, "Selamat Datang", "Enjoy!!!", platform, payload: "payload");
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    double bodyWidth = MediaQuery.of(context).size.width;
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
          height: bodyHeight,
          width: bodyWidth,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: bodyWidth,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Image.asset("gambar/splashScreen.png")),
                  Container(
                    width: bodyWidth,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Selamat Datang',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 23,
                          color: Color.fromARGB(255, 18, 1, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.05,
                  ),
                  Container(
                    width: bodyWidth,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: const Color.fromARGB(141, 35, 35, 35),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.25,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: bodyWidth * .035,
                    ),
                    child: Row(
                      children: [
                        SmoothPageIndicator(
                          controller: controller,
                          count: 1,
                          effect: const WormEffect(
                            dotHeight: 8,
                            dotWidth: 8,
                            dotColor: Colors.grey,
                            activeDotColor: Colors.blue,
                          ),
                          onDotClicked: (index) => controller.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.bounceOut),
                        ),
                        SizedBox(
                          width: bodyWidth * 0.65,
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                              left: bodyWidth * 0.00000,
                              right: bodyWidth * 0.001,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                      child: const FormDataMale(),
                                      type: PageTransitionType.rightToLeft,
                                    ));
                                _showNotification();
                              },
                              child: Image.asset(
                                "gambar/lanjut.png",
                                height: 13,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
