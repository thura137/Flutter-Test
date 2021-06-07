import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildListItem(
              'Delicious hot hambur', 4.0, '24', 'assets/hamburger.png'),
          _buildListItem('Delicious hot donut', 4.0, '28', 'assets/donuts.png'),
          _buildListItem('Delicious hot chip', 4.0, '30', 'assets/chip.png')
        ],
      ),
    );
  }

  _buildListItem(String foodName, rating, String price, String imgPath) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 240,
              child: Row(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFFE3DF)),
                    child: Center(
                      child: Image.asset(
                        imgPath,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: GoogleFonts.notoSans(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: rating.toInt(),
                        color: Color(0xFFFFD143),
                        size: 15,
                        spacing: 0.0,
                        rating: rating,
                        borderColor: Color(0xFFFFD143),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$' + price,
                            style: GoogleFonts.lato(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFF68D7F)),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text('\$' + '20',
                              style: GoogleFonts.lato(
                                  fontSize: 13,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w800,
                                  textStyle: TextStyle(
                                      color: Colors.grey.withOpacity(0.4)))),
                        ],
                      )
                    ],
                  ),
                ],
              )),
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            heroTag: foodName,
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            backgroundColor: Color(0xFFFE7D6A),
          )
        ],
      ),
    );
  }
}
