import 'package:ep03_shop_app/models/product.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
