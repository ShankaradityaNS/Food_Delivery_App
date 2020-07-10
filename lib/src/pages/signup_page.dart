import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Food_Delivery_App/src/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;
  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Email", hintStyle: TextStyle(fontSize: 18.0)),
    );
  }

  Widget _buildUserNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Username", hintStyle: TextStyle(fontSize: 18.0)),
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

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        hintStyle: TextStyle(fontSize: 18.0),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleConfirmVisibility = !_toggleConfirmVisibility;
            });
          },
          icon: _toggleConfirmVisibility
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
      obscureText: _toggleConfirmVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(children: <Widget>[
                  _buildUserNameTextField(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _buildEmailTextField(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _buildPasswordTextField(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _buildConfirmPasswordTextField(),
                ]),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account.",
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
                        builder: (BuildContext context) => (SignInPage())));
                  },
                  child: Text(
                    "Sign In",
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
