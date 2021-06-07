import 'package:ep03_shop_app/detail/body.dart';
import 'package:ep03_shop_app/models/product.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: product.color,
        appBar: AppBar(
          backgroundColor: product.color,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {}),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: BodyDetail(
          product: product,
        ));
  }
}
