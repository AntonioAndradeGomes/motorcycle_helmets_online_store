import 'package:moto_helmet_store/models/category.dart';

class Product {
  final String img;
  final String label;
  final double price;
  final Category? category;

  Product({
    required this.img,
    required this.label,
    required this.price,
    this.category,
  });
}
