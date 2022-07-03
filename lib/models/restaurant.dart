import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String desc;
  String logoUrl;
  num score;
  Map<String, List<Food>> menu;


  Restaurant(this.name, this.desc, this.distance, this.label, this.logoUrl,
      this.menu, this.score, this.waitTime);

  static Restaurant generateRestaurant() {
    return Restaurant(
        "Restaurant",
        "Orange Sandwiches is delicious",
        "2.4km",
        "Restaurant",
        "assets/images/res_logo.png",
        {
          "Recommend": Food.generatePopularFoods(),
          "Popular": Food.generatePopularFoods(),
          'Noodles': [],
          "Pizza": []
        },
        4.7,
        "20-30 min");
  }
}
