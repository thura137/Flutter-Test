import 'package:ep03_shop_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.12, left: 20),
                  height: 540,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      SizedBox(
                        height: 39,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          CounterWithFavBtn(),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 36),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 48,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: product.color,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(Icons.shopping_cart),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: FlatButton(
                                    color: product.color,
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: SizedBox(
                                      height: 25,
                                      child: Text('Buy Now'.toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aristocratic Hand Bag",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        product.title,
                        style: GoogleFonts.notoSans(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Price\n',
                              ),
                              TextSpan(
                                  text: '\$' + (product.price).toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                            ]),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                              child: Hero(
                                  tag: "${product.id}",
                                  child: Image.asset(product.image))),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
