import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Container(
        color: Colors.blue,
        margin: EdgeInsets.all(15),
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.all(15),
          child: Container(
            color: Colors.orange,
            margin: EdgeInsets.all(15),
            child: Container(
              color: Colors.amberAccent,
              margin: EdgeInsets.all(15),
            ),
          ),
        ),
      ),
    );
  }
}
