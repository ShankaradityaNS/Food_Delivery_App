import 'package:Food_Delivery_App/src/Widgets/button.dart';
import 'package:Food_Delivery_App/src/pages/signup_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _toggleVisibility = true;
  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Your Email or Username",
          hintStyle: TextStyle(fontSize: 18.0)),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(fontSize: 18.0),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility
              ? Icon(
                  Icons.visibility_off,
                  color: Colors.black,
                )
              : Icon(
                  Icons.visibility,
                  color: Colors.black,
                ),
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgotten Password?",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent[100],
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(children: <Widget>[
                  _buildEmailTextField(),
                  SizedBox(
                    width: 20.0,
                  ),
                  _buildPasswordTextField(),
                ]),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Button(btnText: "Sign In"),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account.",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => (SignUpPage())));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
