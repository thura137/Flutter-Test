import 'package:ep04_food_delivery_ui/data/data.dart';
import 'package:ep04_food_delivery_ui/models/restaurant.dart';
import 'package:ep04_food_delivery_ui/widgets/recent-order.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Food Delivery'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.account_circle,
              size: 30,
            ),
            onPressed: () {},
          ),
          actions: [
            FlatButton(
                onPressed: () {},
                child: Text(
                  'Cart (${currentUser.cart.length})',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                      onPressed: null),
                  hintText: 'Search food or resturant',
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.clear,
                        size: 30,
                      ),
                      onPressed: null),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                          width: 0.9, color: Theme.of(context).primaryColor))),
            ),
          ),
          RecentOrder(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Near By Restaurants',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              _buildResturantItem()
            ],
          )
        ]));
  }

  _buildResturantItem() {
    List<Widget> resturantList = [];

    restaurants.forEach((Restaurant restaurant) {
      resturantList.add(Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1, color: Colors.grey[200])),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                restaurant.imageUrl,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  restaurant.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 3,
                ),
                SmoothStarRating(
                    allowHalfRating: false,
                    starCount: restaurant.rating,
                    size: 26,
                    borderColor: Colors.red),
                Text(
                  restaurant.address,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '0.2 miles away',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )
          ],
        ),
      ));
    });
    return Column(
      children: resturantList,
    );
  }
}
