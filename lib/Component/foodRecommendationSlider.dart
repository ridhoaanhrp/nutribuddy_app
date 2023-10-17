import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/gridicons.dart';
import 'package:iconify_flutter/icons/heroicons_outline.dart';

class FoodRecommendationSlider extends StatelessWidget {
  const FoodRecommendationSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = MediaQuery.of(context).size.width;
    double bodyHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    List<Map<String, dynamic>> listRecommendationFood = [
      {
        "Color": const Color(0xFFFFF2CC),
        "Icon": "gambar/sayur.png",
        "Name": "Jagung",
        "Desc": "Mengandung Vitamin D",
        "Composition": "0.01 mg",
        "Cost": "Rp 60k - 90k /kg"
      },
      {
        "Color": const Color(0xFFFFF0F0),
        "Icon": "gambar/daging.png",
        "Name": "Ikan",
        "Desc": "Mengandung Vitamin D",
        "Composition": "0.01 mg",
        "Cost": "Rp 60k - 90k /kg"
      },
      {
        "Color": const Color(0xFFECFFCC),
        "Icon": "gambar/buah.png",
        "Name": "Jeruk",
        "Desc": "Mengandung Vitamin D",
        "Composition": "0.01 mg",
        "Cost": "Rp 60k - 90k /kg"
      },
      {
        "Color": const Color(0xFFFFF2CC),
        "Icon": "gambar/daging.png",
        "Name": "Tuna",
        "Desc": "Mengandung Vitamin D",
        "Composition": "0.01 mg",
        "Cost": "Rp 60k - 90k /kg"
      },
    ];

    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.25,
      padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.04),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listRecommendationFood.length,
          itemBuilder: (context, index) {
            final listFood = listRecommendationFood[index];
            return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Container(
                width: bodyWidth * 0.35,
                height: bodyHeight * 0.1,
                padding: EdgeInsets.symmetric(
                    vertical: bodyHeight * 0.01, horizontal: bodyWidth * 0.02),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: bodyHeight * 0.12,
                        decoration: BoxDecoration(
                            color: listFood['Color'],
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("${listFood['Icon']}"),
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
                              )
                            ],
                          ),
                        )),
                    Text(
                      "${listFood['Name']}",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "${listFood['Desc']}",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 10, fontWeight: FontWeight.normal)),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "${listFood['Cost']}",
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF39B0FF))),
                          ),
                          const Iconify(
                            HeroiconsOutline.shopping_bag,
                            size: 15,
                            color: Colors.grey,
                          ),
                          const Iconify(
                            Gridicons.heart,
                            size: 15,
                            color: Color(0xFFFFA5A5),
                          )
                        ])
                  ],
                ),
              ),
            );
          }),
    );
  }
}
