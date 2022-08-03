import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:moto_helmet_store/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  TextStyle get style => const TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Center(
              child: Image(
                image: AssetImage(
                  'assets/images/${product.img}',
                ),
                height: 80,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.label,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  style: style,
                ),
                Text(
                  UtilBrasilFields.obterReal(product.price),
                  style: style,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
