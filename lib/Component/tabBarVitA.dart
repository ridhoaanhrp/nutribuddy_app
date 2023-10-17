import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/codicon.dart';
import 'package:iconify_flutter/icons/ei.dart';
import 'package:iconify_flutter/icons/prime.dart';

class TabBarVitA extends StatelessWidget {
  const TabBarVitA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = MediaQuery.of(context).size.width;
    double bodyHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    List<Map<String, dynamic>> listFoodVitA = [
      {
        "Color": Color(0xFFFFF2CC),
        "Icon": "gambar/sayur.png",
        "Name": "Jagung",
        "Desc": "Mengandung Vitamin A",
        "Composition": "0.01 mg",
        "Cost": "Rp 60k - 90k /kg",
        "Rate": "4.5 Review Menarik"
      },
      {
        "Color": Color(0xFFFFF0F0),
        "Icon": "gambar/daging.png",
        "Name": "Ikan",
        "Desc": "Mengandung Vitamin A",
        "Composition": "0.01 mg",
        "Cost": "Rp 60k - 90k /kg",
        "Rate": "4.5 Review Menarik"
      },
      {
        "Color": Color(0xFFECFFCC),
        "Icon": "gambar/buah.png",
        "Name": "Jeruk",
        "Desc": "Mengandung Vitamin A",
        "Composition": "0.01 mg",
        "Cost": "Rp 60k - 90k /kg",
        "Rate": "4.5 Review Menarik"
      },
      {
        "Color": Color(0xFFFFF2CC),
        "Icon": "gambar/daging.png",
        "Name": "Tuna",
        "Desc": "Mengandung Vitamin A",
        "Composition": "0.01 mg",
        "Cost": "Rp 60k - 90k /kg",
        "Rate": "4.5 Review Menarik"
      },
    ];

    return ListView.builder(
        itemCount: listFoodVitA.length,
        itemBuilder: (context, index) {
          final listFood = listFoodVitA[index];
          return Card(
            elevation: 0,
            child: Container(
              width: bodyWidth,
              height: bodyHeight * 0.09,
              padding: EdgeInsets.symmetric(
                  horizontal: bodyWidth * 0.04, vertical: bodyHeight * 0.01),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: bodyHeight * 0.1,
                      width: bodyWidth * 0.2,
                      decoration: BoxDecoration(
                        color: listFood['Color'],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Image.asset("${listFood['Icon']}")),
                    ),
                  ),
                  SizedBox(
                    width: bodyWidth * 0.05,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "${listFood['Name']}",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                            )),
                            const Iconify(
                              Prime.shopping_bag,
                              size: 17,
                              color: Colors.grey,
                            ),
                            const Iconify(
                              Ei.heart,
                              size: 19,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Iconify(
                              Codicon.star_full,
                              color: Color(0xFFFFD027),
                              size: 15,
                            ),
                            Text(
                              "${listFood['Rate']}",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Iconify(
                              AntDesign.fire_filled,
                              color: Color(0xFFFF900E),
                            ),
                            Text(
                              "${listFood['Composition']}",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFF900E))),
                            )
                          ],
                        ),
                        Text(
                          "${listFood['Cost']}",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF39B0FF))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
