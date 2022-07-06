import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/widget/food_list.dart';
import 'package:food_delivery_app/screens/home/widget/food_list_view.dart';
import 'package:food_delivery_app/widgets/customappbar.dart';
import 'package:food_delivery_app/screens/home/widget/restaurant_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get restaurant => Restaurant.generateRestaurant();
  final pageController = PageController();
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            rightIcon: Icons.search_outlined,
            leftIcon: Icons.arrow_back_ios_new_outlined,
          ),
          const RestaurantInfo(),
          FoodList(
              selected: selected,
              callback: (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              },
              restaurant: restaurant),
          Expanded(
              child: FoodListView(selected:selected, callback: (int index) {
            setState(() {
              selected = index;
            });
          }, pageController:pageController, restaurant: restaurant))
        ],
      ),
    );
  }
}
