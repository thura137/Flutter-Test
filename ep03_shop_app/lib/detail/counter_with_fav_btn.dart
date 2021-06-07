import 'package:flutter/material.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 25),
      height: 32,
      width: 32,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFF6464)),
      child: Center(child: Icon(Icons.favorite_border)),
    );
  }
}
