import 'package:flutter/material.dart';

class Product {
  final int price;
  final String id, title, category, image, subTitle , description;

  Product({
      this.price,
      this.id,
      this.title,
      this.category,
      this.image,
      this.subTitle,
      this.description});

  // It creates a product from JSON

  factory Product.fromJson(Map<String,dynamic> json) {
    return Product(
        id: json["id"],
        price: json["price"],
        title: json["title"],
        category: json["category"],
        image: json["image"],
        subTitle: json["subTitle"],
        description: json["description"]
    );
  }
}

// Our Demo Product

Product product = Product(
  id: "1",
  price: 1600,
  title: "Wood Frame",
  image: "assets/images/img_1.png",
  category: "Chair",
  subTitle: "Tieton ArmChair",
  description: description
);

String description = "This arm chair is an elegant and functional piece of "
    "furniture. It is suitable for family";
