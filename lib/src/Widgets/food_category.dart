import 'package:Food_Delivery_App/src/Models/category_model.dart';
import 'package:flutter/material.dart';
import 'food_card.dart';
//data
import '../data/category_data.dart';
//model
import '../Models/category_model.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index) {
            return FoodCard(
              categoryName: _categories[index].categoryName,
              imagePath: _categories[index].imagePath,
              numberofItems: _categories[index].numberofItems,
            );
          }),
    );
  }
}
