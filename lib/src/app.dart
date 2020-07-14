import 'package:Food_Delivery_App/src/Admin/Pages/add_food_item.dart';
import 'package:flutter/material.dart';
//import 'screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      //home: MainScreen(),
      home: AddFoodItem(),
    );
  }
}
