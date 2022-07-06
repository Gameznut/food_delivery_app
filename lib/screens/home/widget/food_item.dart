import 'package:flutter/cupertino.dart';

import '../../../models/food.dart';

class FoodItem extends StatelessWidget {
final Food food;
FoodItem(this.food, {Key? key}) : super(key: key)
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(food.name),
    );
  }
}
