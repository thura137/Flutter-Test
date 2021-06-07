import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        outLineButtonBuilder(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numberOfItem > 01) {
                  numberOfItem--;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            numberOfItem.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        outLineButtonBuilder(
            icon: Icons.add,
            press: () {
              setState(() {
                numberOfItem++;
              });
            })
      ],
    );
  }

  SizedBox outLineButtonBuilder({IconData icon, Function press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        onPressed: press,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Icon(icon),
      ),
    );
  }
}
