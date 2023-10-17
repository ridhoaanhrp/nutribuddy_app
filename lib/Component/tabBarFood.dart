import 'package:flutter/material.dart';

class TabBarFood extends StatefulWidget {
  const TabBarFood({Key? key}) : super(key: key);

  @override
  _TabBarFoodState createState() => _TabBarFoodState();
}

class _TabBarFoodState extends State<TabBarFood> {
  List<Map<String, dynamic>> listFoodCategory = [
    {
      "Color": const Color(0xFFFFF0EC),
      "Image": "gambar/sayur.png",
      "FoodCategoryName": "Sayuran",
      "FoodQuantityInfo": "20 Jenis Sayuran"
    },
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/buah.png",
      "FoodCategoryName": "Buah",
      "FoodQuantityInfo": "10 Jenis Buah"
    },
    {
      "Color": const Color(0xFFDCF1FF),
      "Image": "gambar/daging.png",
      "FoodCategoryName": "Daging",
      "FoodQuantityInfo": "20 Jenis Daging"
    },
  ];

  List<Map<String, dynamic>> listDetailFoodVegetables = [
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/sayur.png",
      "FoodDetailCategoryName": "Sayur A",
      "Description": "Sayur A",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFFFF0F0),
      "Image": "gambar/sayur.png",
      "FoodDetailCategoryName": "Sayur B",
      "Description": "Sayur B",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFDCF1FF),
      "Image": "gambar/sayur.png",
      "FoodDetailCategoryName": "Sayur C",
      "Description": "Sayur C",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/sayur.png",
      "FoodDetailCategoryName": "Sayur C",
      "Description": "Sayur C",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
  ];
  List<Map<String, dynamic>> listDetailFoodFruit = [
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/buah.png",
      "FoodDetailCategoryName": "Buah A",
      "Description": "Buah A",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFFFF0F0),
      "Image": "gambar/buah.png",
      "FoodDetailCategoryName": "Buah B",
      "Description": "Buah B",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFDCF1FF),
      "Image": "gambar/buah.png",
      "FoodDetailCategoryName": "Buah C",
      "Description": "Buah C",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/buah.png",
      "FoodDetailCategoryName": "Buah C",
      "Description": "Buah C",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
  ];
  List<Map<String, dynamic>> listDetailFoodMeat = [
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/daging.png",
      "FoodDetailCategoryName": "Daging A",
      "Description": "Daging A",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFFFF0F0),
      "Image": "gambar/daging.png",
      "FoodDetailCategoryName": "Daging B",
      "Description": "Daging B",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFDCF1FF),
      "Image": "gambar/daging.png",
      "FoodDetailCategoryName": "Daging C",
      "Description": "Daging C",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/daging.png",
      "FoodDetailCategoryName": "Daging D",
      "Description": "Daging C",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/daging.png",
      "FoodDetailCategoryName": "Daging E",
      "Description": "Daging C",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
    {
      "Color": const Color(0xFFFFF2CC),
      "Image": "gambar/daging.png",
      "FoodDetailCategoryName": "Daging F",
      "Description": "Daging C",
      "Vitamin": "D",
      "Composition": "10 Kg - 20 Kg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return DefaultTabController(
      length: listFoodCategory.length,
      initialIndex: 0,
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.05),
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              indicator: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              tabs: listFoodCategory.map((data) {
                return Container(
                  height: height * 0.26,
                  width: width * 0.53,
                  decoration: BoxDecoration(
                      color: data['Color'],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: height * 0.1),
                          height: height * 0.1,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("${data['Image']}"),
                          )),
                        ),
                        Center(
                          child: Text(
                            "${data['FoodCategoryName']}",
                            style: const TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Text(
                            "${data['FoodQuantityInfo']}",
                            style: const TextStyle(
                                fontFamily: "Montserrat", fontSize: 11),
                          ),
                        )
                      ]),
                );
              }).toList(),
            ),
            Flexible(
              child: Container(
                  width: width,
                  height: height * 0.7,
                  padding: EdgeInsets.only(top: height * 0.05),
                  child: TabBarView(children: [
                    ListView(
                      children: listDetailFoodVegetables.map((data) {
                        return Container(
                          height: height * 0.15,
                          width: width * 0.7,
                          padding: EdgeInsets.only(
                              top: height * 0.01,
                              left: width * 0.02,
                              right: width * 0.01),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: height * 0.1,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                    color: data['Color'],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset("${data['Image']}"),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "${data['FoodDetailCategoryName']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          fontFamily: "Montserrat"),
                                    ),
                                    Text(
                                      "${data['Description']}",
                                      style: const TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 11),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Vitamin ${data['Vitamin']}",
                                        style: const TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 13,
                                            color: Color(0xFFFFC60E),
                                            fontWeight: FontWeight.bold)),
                                    Text("${data['Composition']}",
                                        style: const TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 12,
                                            color: Color(0xFF39B0FF),
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    ListView(
                      children: listDetailFoodFruit.map((data) {
                        return Container(
                          height: height * 0.15,
                          width: width * 0.7,
                          padding: EdgeInsets.only(
                              top: height * 0.01,
                              left: width * 0.02,
                              right: width * 0.01),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: height * 0.1,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                    color: data['Color'],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset("${data['Image']}"),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "${data['FoodDetailCategoryName']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          fontFamily: "Montserrat"),
                                    ),
                                    Text(
                                      "${data['Description']}",
                                      style: const TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 11),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Vitamin ${data['Vitamin']}",
                                        style: const TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 13,
                                            color: Color(0xFFFFC60E),
                                            fontWeight: FontWeight.bold)),
                                    Text("${data['Composition']}",
                                        style: const TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 12,
                                            color: Color(0xFF39B0FF),
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    ListView(
                      children: listDetailFoodMeat.map((data) {
                        return Container(
                          height: height * 0.15,
                          width: width * 0.7,
                          padding: EdgeInsets.only(
                              top: height * 0.01,
                              left: width * 0.02,
                              right: width * 0.01),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: height * 0.1,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                    color: data['Color'],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset("${data['Image']}"),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "${data['FoodDetailCategoryName']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          fontFamily: "Montserrat"),
                                    ),
                                    Text(
                                      "${data['Description']}",
                                      style: const TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 11),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Vitamin ${data['Vitamin']}",
                                        style: const TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 13,
                                            color: Color(0xFFFFC60E),
                                            fontWeight: FontWeight.bold)),
                                    Text("${data['Composition']}",
                                        style: const TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 12,
                                            color: Color(0xFF39B0FF),
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
