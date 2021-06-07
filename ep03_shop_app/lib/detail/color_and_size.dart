import 'package:ep03_shop_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF86078),
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(style: TextStyle(color: textColor), children: [
              TextSpan(text: 'Size\n'),
              TextSpan(
                  text: "${product.size} cm",
                  style: GoogleFonts.notoSans(
                      fontSize: 20, fontWeight: FontWeight.w700))
            ]),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5, right: 4),
        height: 24,
        width: 24,
        padding: EdgeInsets.all(2.5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected ? color : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ));
  }
}
