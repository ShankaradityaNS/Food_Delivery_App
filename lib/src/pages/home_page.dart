import 'package:Food_Delivery_App/src/Widgets/food_category.dart';
import 'package:flutter/material.dart';
import '../Widgets/Home_Top_Info.dart';
import '../Widgets/food_category.dart';
import '../Widgets/search_field.dart';
import '../Widgets/bought_foods.dart';

//Data
import '../Data/food_data.dart';
import '../Models/food_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> _foods = foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
            children: <Widget>[
          Home_Top_Info(),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          SearchField(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frequently Bought Food",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              GestureDetector(
                onTap: null,
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),
        ]));
  }
}

Widget _buildFoodItems(Food food) {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    child: BoughtFoods(
      id: food.id,
      name: food.name,
      imagePath: food.imagePath,
      category: food.category,
      discount: food.discount,
      price: food.price,
      ratings: food.ratings,
    ),
  );
}
