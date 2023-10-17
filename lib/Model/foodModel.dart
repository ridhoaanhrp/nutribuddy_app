// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FoodModel {
  int? id;
  String? title;
  String? description;
  String? type;
  String? vitamin;
  String? createdAt;
  String? updatedAt;
  double? review;
  double? unit;
  FoodModel({
    this.id,
    this.title,
    this.description,
    this.type,
    this.vitamin,
    this.createdAt,
    this.updatedAt,
    this.review,
    this.unit,
  });

  FoodModel copyWith({
    int? id,
    String? title,
    String? description,
    String? type,
    String? vitamin,
    String? createdAt,
    String? updatedAt,
    double? review,
    double? unit,
  }) {
    return FoodModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      vitamin: vitamin ?? this.vitamin,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      review: review ?? this.review,
      unit: unit ?? this.unit,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'type': type,
      'vitamin': vitamin,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'review': review,
      'unit': unit,
    };
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      vitamin: map['vitamin'] != null ? map['vitamin'] as String : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
      review: map['review'] != null ? map['review'] as double : null,
      unit: map['unit'] != null ? map['unit'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) =>
      FoodModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FoodModel(id: $id, title: $title, description: $description, type: $type, vitamin: $vitamin, createdAt: $createdAt, updatedAt: $updatedAt, review: $review, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FoodModel &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.type == type &&
        other.vitamin == vitamin &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.review == review &&
        other.unit == unit;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        type.hashCode ^
        vitamin.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        review.hashCode ^
        unit.hashCode;
  }
}
