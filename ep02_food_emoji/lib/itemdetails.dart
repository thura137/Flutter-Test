import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetail extends StatefulWidget {
  final foodName, prePrice, imagPath, heroTab;
  ItemDetail({this.foodName, this.prePrice, this.imagPath, this.heroTab});

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  var netPrice = 0;
  var quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Stack(
                  children: [
                    Container(height: 45, width: 45, color: Colors.transparent),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFFE7D6A).withOpacity(0.3),
                                blurRadius: 6,
                                spreadRadius: 4,
                                offset: Offset(0.0, 4))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFE7D6A)),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 1,
                        right: 1,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              "1",
                              style: GoogleFonts.notoSans(
                                  fontSize: 7,
                                  textStyle: TextStyle(color: Colors.red)),
                            ),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'SUPER',
                style: GoogleFonts.notoSans(
                    fontSize: 27, fontWeight: FontWeight.w800),
              )),
          Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                widget.foodName,
                style: GoogleFonts.notoSans(
                    fontSize: 27, fontWeight: FontWeight.w800),
              )),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imagPath), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                          height: 45,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFFE7D6A).withOpacity(0.1),
                                    blurRadius: 6,
                                    spreadRadius: 6,
                                    offset: Offset(5, 5))
                              ])),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFFE7D6A),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 35),
                  Stack(
                    children: [
                      Container(
                          height: 45,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFFE7D6A).withOpacity(0.1),
                                    blurRadius: 6,
                                    spreadRadius: 6,
                                    offset: Offset(5, 5))
                              ])),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.restore,
                            color: Color(0xFFFE7D6A),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      '\$' + (int.parse(widget.prePrice) * quantity).toString(),
                      style: GoogleFonts.notoSans(
                          color: Color(
                            0xFF5E6166,
                          ),
                          fontSize: 40,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
              Container(
                height: 60,
                width: 235,
                decoration: BoxDecoration(
                    color: Color(0xFFFE7D6A),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 105,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Color(0xFFFE7D6A),
                              ),
                              onPressed: () {
                                adjuestQuantity('MINIUS');
                              }),
                          Text(
                            quantity.toString(),
                            style: GoogleFonts.notoSans(
                                color: Color(0xFFFE7D6A),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Color(0xFFFE7D6A),
                              ),
                              onPressed: () {
                                adjuestQuantity('PLUS');
                              }),
                        ],
                      ),
                    ),
                    Text(
                      'Add to cart',
                      style: GoogleFonts.notoSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          // SizedBox(
          // height: 15,
          // ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text('FEATURE',
                style: GoogleFonts.notoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
            height: 210,
            width: MediaQuery.of(context).size.width,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [buildListItem('1'), buildListItem('2')]),
          )
        ],
      ),
    );
  }

  buildListItem(String columnNumber) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(children: [
        if (columnNumber == '1')
          _buildColumItem(
              'assets/popcorn.png', 'Popcorn', '20', Color(0xFFFBD6F5)),
        SizedBox(
          height: 10,
        ),
        if (columnNumber == '1')
          _buildColumItem('assets/taco.png', 'Taco', '10', Color(0xFFFBD6F5)),
        if (columnNumber == '2')
          _buildColumItem(
              'assets/street.png', 'Street Taco', '50', Color(0xFFFBD6F5)),
        SizedBox(
          height: 10,
        ),
        if (columnNumber == '2')
          _buildColumItem(
              'assets/cheese.png', 'Cheese', '30', Color(0xFFFBD6F5)),
      ]),
    );
  }

  adjuestQuantity(pressed) {
    switch (pressed) {
      case 'PLUS':
        {
          setState(() {
            quantity += 1;
          });
          return;
        }
      case 'MINIUS':
        {
          setState(() {
            if (quantity != 0) {
              quantity -= 1;
            }
          });
          return;
        }
    }
  }
}

_buildColumItem(String imgPath, String foodName, String price, Color color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 210,
        child: Row(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: color),
              child: Center(
                child: Image.asset(
                  imgPath,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(foodName,
                    style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    )),
                Text('\$' + price,
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFE7D6A)))
              ],
            )
          ],
        ),
      )
    ],
  );
}
