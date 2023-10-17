import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Positioned(
      top: height * -0.045,
      left: width * 0.0485,
      child: Container(
        height: height * 0.1,
        width: width * 0.9,
        padding: EdgeInsets.only(
            top: height * 0.025, left: width * 0.03, right: width * 0.03),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0,
                  blurRadius: 0.1,
                  offset: Offset(0, 0))
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Expanded(
                flex: 0,
                child: AutoSizeText(
                  "Kekurangan",
                  minFontSize: 7,
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 9,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(flex: 0, child: SizedBox(width: width * 0.10)),
              const Expanded(
                flex: 0,
                child: AutoSizeText(
                  "Ballance",
                  minFontSize: 7,
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 9,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(flex: 0, child: SizedBox(width: width * 0.15)),
              const Expanded(
                flex: 0,
                child: AutoSizeText(
                  "Kalori",
                  minFontSize: 7,
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 9,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ]),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 0,
                  child: AutoSizeText(
                    "Vitamin D",
                    minFontSize: 9,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFC60E)),
                  ),
                ),
                Expanded(flex: 0, child: SizedBox(width: width * 0.07)),
                Expanded(
                    flex: 0,
                    child: Image.asset(
                      "gambar/money.png",
                      fit: BoxFit.contain,
                    )),
                Expanded(flex: 0, child: SizedBox(width: width * 0.01)),
                const Expanded(
                  flex: 0,
                  child: AutoSizeText(
                    "Rp 70K",
                    minFontSize: 9,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF39B0FF)),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: SizedBox(
                    width: width * 0.05,
                  ),
                ),
                Expanded(
                    flex: 0,
                    child: Image.asset(
                      "gambar/kalori.png",
                      fit: BoxFit.contain,
                    )),
                Expanded(flex: 0, child: SizedBox(width: width * 0.01)),
                const Expanded(
                  flex: 0,
                  child: AutoSizeText(
                    "290 Kalori",
                    minFontSize: 9,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF900E)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: width * 0.05,
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: (() {}),
                    child: Image.asset(
                      "gambar/newActivity.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
