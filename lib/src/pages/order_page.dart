import 'package:Food_Delivery_App/src/pages/signin_page.dart';
import 'package:flutter/material.dart';
//custom Widgets
import '../Widgets/order_card.dart';

BuildContext context2;

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    context2 = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Food Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          // _buildTotalContainer(), //Remove these comments and
          //comment the bottomNavigationBar to enable a full screen
          //view of food cart//
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(), //Comment this and
      //remove comment of _buildTotalContainer() in the children widget
      //of ListView to enable a sliding form to view the order cart//
    );
  }
}

Widget _buildTotalContainer() {
  return Container(
    height: 220.0,
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    child: Column(
      children: <Widget>[
        Divider(
          height: 20.0,
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Cart Total :",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey)),
            Text("\u20B9 245.0",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Discount :",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey)),
            Text("0.0",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Tax(in %) :",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey)),
            Text("5.0",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
        Divider(
          height: 20.0,
          color: Colors.black,
          thickness: 2.5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Sub Total :",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey)),
            Text("\u20B9 257.25",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        GestureDetector(
            onTap: () {
              Navigator.of(context2).push(MaterialPageRoute(
                  builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              height: 50.0,
              width: 300.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Text(
                  "Proceed  to  checkout",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ],
    ),
  );
}
