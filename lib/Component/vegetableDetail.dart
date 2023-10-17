import 'package:flutter/material.dart';

class VegetableDetail {
  Color? color;
  String? imageURL;
  String? vegetableName;
  String? description;
  List<String>? vitamin;
  double? price;

  VegetableDetail(
      {required this.color,
      required this.imageURL,
      required this.vegetableName,
      required this.description,
      required this.vitamin,
      required this.price});

  var listVegetable = [
    VegetableDetail(
        color: const Color(0xFFFFF2CC),
        imageURL: "gambar/sayur.png",
        vegetableName: "Sayur A",
        description: "Ini sayur A",
        vitamin: ["A", "B", "C", "D", "E", "K"],
        price: 20),
    VegetableDetail(
        color: const Color(0xFFFFF2CC),
        imageURL: "gambar/sayur.png",
        vegetableName: "Sayur B",
        description: "Ini sayur B",
        vitamin: ["A", "B", "C", "D", "E", "K"],
        price: 15),
    VegetableDetail(
        color: const Color(0xFFFFF2CC),
        imageURL: "gambar/sayur.png",
        vegetableName: "Sayur B",
        description: "Ini sayur B",
        vitamin: ["A", "B", "C", "D", "E", "K"],
        price: 30),
    VegetableDetail(
        color: const Color(0xFFFFF2CC),
        imageURL: "gambar/sayur.png",
        vegetableName: "Sayur B",
        description: "Ini sayur B",
        vitamin: ["A", "B", "C", "D", "E", "K"],
        price: 10),
  ];
}
