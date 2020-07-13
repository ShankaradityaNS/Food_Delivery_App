import 'package:Food_Delivery_App/src/Widgets/small_button.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "All Food Items",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              height: 120.0,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                        color: Colors.black38)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      right: 2.5,
                    ),
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assests/Images/masala_dosa.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Masala Dosa",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7.5,
                      ),
                      Container(
                          width: 190.0,
                          child: Text("It is a perfect fusion of spiced")),
                      Container(
                          width: 190.0,
                          child: Text("potato and crispy coating.")),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: 180.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "\u20B9 40",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SmallButton(
                              btnText: "Buy",
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
