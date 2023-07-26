import 'dart:convert';

List<Product> product_list(String json)=>List<Product>.from(
      jsonDecode(json).map((each_tile) => Product.fromJson(each_tile)));


class Product {
  int id;
  String brand;
  String name;
  String price;
  String image_link;
  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    required this.image_link,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json["id"],
      brand: json["brand"],
      name: json["name"],
      price: json["price"],
      image_link: json["image_link"]);
  Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand,
        "name": name,
        "price": price,
        "image_link": image_link
      };
}
