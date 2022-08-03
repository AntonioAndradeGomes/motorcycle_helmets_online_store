import 'package:flutter/material.dart';
import 'package:moto_helmet_store/models/category.dart';
import 'package:moto_helmet_store/widgets/category_item.dart';
import 'package:moto_helmet_store/consts.dart';
import 'package:moto_helmet_store/models/product.dart';
import 'package:moto_helmet_store/widgets/product_item.dart';

class HomePage extends StatelessWidget {
  final categories = [
    Category(name: 'All', active: true),
    Category(name: 'Full face'),
    Category(name: 'Modalur'),
    Category(name: 'Dirt'),
    Category(name: 'Ghost'),
  ];

  final products = [
    Product(img: 'img1.png', label: 'LS1', price: 200),
    Product(img: 'img2.png', label: 'LS2', price: 250),
    Product(img: 'img3.png', label: 'LS3', price: 300),
    Product(img: 'img4.png', label: 'LS4', price: 350),
  ];
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Moto',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              TextSpan(
                text: 'Helmet',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: btnColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Let's find the helmet",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black38,
                  ),
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: SizedBox(
                height: 50,
                child: ListView.separated(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) => CategoryItem(
                    category: categories[index],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    product: products[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
