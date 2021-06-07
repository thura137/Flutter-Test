import 'package:ep03_shop_app/models/product.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(16)),
                child: Hero(
                    tag: "${product.id}", child: Image.asset(product.image))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              product.title,
              style: TextStyle(color: textColor),
            ),
          ),
          Text(
            '\$234',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
