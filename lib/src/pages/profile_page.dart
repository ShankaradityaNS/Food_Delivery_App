import 'package:Food_Delivery_App/src/Widgets/custom_list_title.dart';
import 'package:flutter/material.dart';

bool turnOnNotification = false;
bool turnOnLocation = false;

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2.5,
                            offset: Offset(4.0, 0.0),
                            color: Colors.black45),
                      ],
                      image: DecorationImage(
                        image: AssetImage(
                          "assests/Images/ProfilePic.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Shankaraditya N S",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "3354466656",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 25.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      CustomerListTitle(
                        icon: Icons.my_location,
                        text: "Location",
                      ),
                      Divider(
                        height: 18.0,
                        color: Colors.grey,
                      ),
                      CustomerListTitle(
                        icon: Icons.visibility,
                        text: "Change Password",
                      ),
                      Divider(
                        height: 18.0,
                        color: Colors.grey,
                      ),
                      CustomerListTitle(
                        icon: Icons.shopping_cart,
                        text: "Delivery",
                      ),
                      Divider(
                        height: 18.0,
                        color: Colors.grey,
                      ),
                      CustomerListTitle(
                        icon: Icons.payment,
                        text: "Payment",
                      ),
                      Divider(
                        height: 18.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("App Notification",
                              style: TextStyle(
                                fontSize: 16.0,
                              )),
                          Switch(
                              value: turnOnNotification,
                              onChanged: (bool value) {
                                setState(() {
                                  turnOnNotification = value;
                                });
                              })
                        ],
                      ),
                      Divider(
                        height: 18.0,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Location Tracking",
                              style: TextStyle(
                                fontSize: 16.0,
                              )),
                          Switch(
                              value: turnOnLocation,
                              onChanged: (bool value) {
                                setState(() {
                                  turnOnLocation = value;
                                });
                              })
                        ],
                      ),
                      Divider(
                        height: 18.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Other",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Language",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Divider(
                          height: 20.0,
                          color: Colors.grey,
                        ),
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Divider(
                          height: 20.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
