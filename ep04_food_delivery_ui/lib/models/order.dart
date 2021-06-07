import 'package:ep04_food_delivery_ui/models/food.dart';
import 'package:ep04_food_delivery_ui/models/restaurant.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({this.restaurant, this.food, this.date, this.quantity});
}
