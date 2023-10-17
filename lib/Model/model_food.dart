class FoodModel {
  FoodModel({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.vitamin,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.review,
    required this.unit,
  });

  final int id;
  final String title;
  final String description;
  final String type;
  final String vitamin;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final double review;
  final double unit;

  factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        type: json["type"],
        vitamin: json["vitamin"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        review: json["review"],
        unit: json["unit"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "type": type,
        "vitamin": vitamin,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "review": review,
        "unit": unit,
      };
}
