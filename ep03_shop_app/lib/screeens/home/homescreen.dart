import 'package:ep03_shop_app/components/body.dart';
import 'package:ep03_shop_app/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: textColor,
          ),
          onPressed: () {}),
      actions: [
        IconButton(
            icon: Icon(
              Icons.search,
              color: textColor,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: textColor,
            ),
            onPressed: () {}),
        SizedBox(
          width: defaultPadding / 2,
        )
      ],
    );
  }
}
