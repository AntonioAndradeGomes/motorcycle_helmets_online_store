import 'package:flutter/material.dart';
import 'package:moto_helmet_store/models/category.dart';
import 'package:moto_helmet_store/consts.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: category.active ? btnColor : Colors.transparent,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            print(category.name);
          },
          child: Center(
            child: Text(
              category.name,
              style: TextStyle(
                color: category.active ? Colors.white : btnColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
