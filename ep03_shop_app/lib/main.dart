import 'package:ep03_shop_app/constants.dart';
import 'package:ep03_shop_app/screeens/home/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor)),
      home: HomeScreen(),
    );
  }
}
