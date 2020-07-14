import 'package:Food_Delivery_App/src/Models/food_model.dart';
import 'package:Food_Delivery_App/src/Widgets/button.dart';
import 'package:flutter/material.dart';

class AddFoodItem extends StatefulWidget {
  @override
  _AddFoodItemState createState() => _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {
  String title;
  String category;
  String description;
  String price;
  String discount;
  GlobalKey<FormState> _foodIteamFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 16.0),
          //width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          child: Form(
            key: _foodIteamFormKey,
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    height: 170.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assests/Images/rolls.jpg")))),
                _buildTextFormField("Food Title"),
                _buildTextFormField("Category"),
                _buildTextFormField("Description", maxLine: 5),
                _buildTextFormField("Price"),
                _buildTextFormField("Discount"),
                SizedBox(height: 20.0),
                GestureDetector(
                  child: Button(btnText: "Add Food Item"),
                  onTap: () {
                    if (_foodIteamFormKey.currentState.validate()) {
                      _foodIteamFormKey.currentState.save();
                      Food(
                          name: title,
                          category: category,
                          description: description,
                          price: double.parse(price),
                          discount: double.parse(discount));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String hint, {int maxLine = 1}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "$hint",
      ),
      maxLines: maxLine,
      keyboardType: hint == "Price" || hint == "Discount"
          ? TextInputType.number
          : TextInputType.text,
      validator: (String value) {
        if (value.isEmpty && hint == "Food Title") {
          return "The Food Title is Required.";
        }
        if (value.isEmpty && hint == "Category") {
          return "The Category is Required.";
        }
        if (value.isEmpty && hint == "Description") {
          return "The Description is Required.";
        }
        if (value.isEmpty && hint == "Price") {
          return "The Price is Required.";
        }
      },
      onChanged: (String value) {
        if (hint == "Food Title") {
          title = value;
        }
        if (hint == "Category") {
          title = value;
        }
        if (hint == "Description") {
          title = value;
        }
        if (hint == "Price") {
          title = value;
        }
        if (hint == "Discount") {
          title = value;
        }
      },
    );
  }
}
