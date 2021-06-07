import 'package:flutter/material.dart';

class Product {
  final int id, price, size;
  final String image, title, description;
  final Color color;

  Product(
      {this.id,
      this.price,
      this.size,
      this.image,
      this.title,
      this.description,
      this.color});
}

List<Product> products = [
  Product(
      id: 1,
      price: 234,
      size: 12,
      image: 'assets/images/bag_1.png',
      title: 'Office Code',
      description:
          'Lorem ipsum — is a popular meaningless text imitating Latin. It is used for filling in HTML-templates in order to evaluate their appearance; ... when using templates, make sure that all dummy text is detected and replaced.',
      color: Color(0xFF3D82BE)),
  Product(
      id: 2,
      price: 224,
      size: 8,
      image: 'assets/images/bag_2.png',
      title: 'Belt Bag',
      description:
          'Lorem ipsum — is a popular meaningless text imitating Latin. It is used for filling in HTML-templates in order to evaluate their appearance; ... when using templates, make sure that all dummy text is detected and replaced.',
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description:
          'Lorem ipsum — is a popular meaningless text imitating Latin. It is used for filling in HTML-templates in order to evaluate their appearance; ... when using templates, make sure that all dummy text is detected and replaced.',
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description:
          'Lorem ipsum — is a popular meaningless text imitating Latin. It is used for filling in HTML-templates in order to evaluate their appearance; ... when using templates, make sure that all dummy text is detected and replaced.',
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description:
          'Lorem ipsum — is a popular meaningless text imitating Latin. It is used for filling in HTML-templates in order to evaluate their appearance; ... when using templates, make sure that all dummy text is detected and replaced.',
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description:
        'Lorem ipsum — is a popular meaningless text imitating Latin. It is used for filling in HTML-templates in order to evaluate their appearance; ... when using templates, make sure that all dummy text is detected and replaced.',
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    'Lorem ipsum — is a popular meaningless text imitating Latin. It is used for filling in HTML-templates in order to evaluate their appearance; ... when using templates, make sure that all dummy text is detected and replaced.';
