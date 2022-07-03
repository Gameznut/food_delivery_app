class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  num price;
  String cal;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;

  Food(this.waitTime, this.score, this.desc, this.name, this.about, this.cal,
      this.imgUrl, this.ingredients, this.price, this.quantity,
      {this.highLight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          "50 mins",
          4.8,
          "Highly Recommended",
          "Pasta",
          "A nice dish to be taken in the morning",
          "325 kcal",
          "assets/images/dish3.png",
          [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"},
          ],
          17,
          0,
          highLight: true),
      Food(
          "50 mins",
          4.8,
          "Highly Recommended",
          "Noodles",
          "about",
          "325 kcal",
          "assets/images/dish1.png",
          [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"},
          ],
          17,
          0),
      Food(
          "30 mins",
          4.8,
          "Highly Recommended",
          "Pasta",
          "about",
          "320 kcal",
          "assets/images/dish2.png",
          [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"},
          ],
          17,
          0),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          "50 mins",
          4.8,
          "Highly Recommended",
          "Pasta",
          "A nice dish to be taken in the morning",
          "325 kcal",
          "assets/images/dish3.png",
          [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"},
          ],
          17,
          0),
      Food(
          "50 mins",
          4.8,
          "Highly Recommended",
          "Noodles",
          "about",
          "325 kcal",
          "assets/images/dish1.png",
          [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"},
          ],
          17,
          0),
      Food(
          "30 mins",
          4.8,
          "Highly Recommended",
          "Pasta",
          "about",
          "320 kcal",
          "assets/images/dish2.png",
          [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"},
          ],
          17,
          0, highLight: true),
    ];
  }
}
