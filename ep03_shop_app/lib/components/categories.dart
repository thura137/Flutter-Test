import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Hand Bag', 'Jewellery', 'Foodwears', 'Dresses'];
  // by default our first item will be selected
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildBuildCategory(index)),
    );
  }

  Widget buildBuildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: GoogleFonts.notoSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: selectedItem == index ? textColor : textLightColor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Container(
                height: 2,
                width: 30,
                color:
                    selectedItem == index ? Colors.black : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
