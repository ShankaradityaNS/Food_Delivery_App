import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80.0,
              width: 50.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "0",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 14.0,
            ),
            Container(
              height: 90.0,
              width: 90.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assests/Images/pasta.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(45.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 5.0),
                    )
                  ]),
            ),
            SizedBox(
              width: 14.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Cheese Pasta",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Cost - \u20B9 35.0",
                  style: TextStyle(color: Colors.black87),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 25.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Pasta",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "x",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 10.0,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Spicy",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "x",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            GestureDetector(
              child: Icon(Icons.cancel),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
