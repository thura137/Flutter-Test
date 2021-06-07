import 'package:ep03_shop_app/detail/detail_screen.dart';
import 'package:ep03_shop_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Women',
            style:
                GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Categories(),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  product: products[index],
                                ))))),
          ),
        )
      ],
    );
  }
}
