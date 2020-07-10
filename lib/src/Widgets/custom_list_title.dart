import 'package:flutter/material.dart';

class CustomerListTitle extends StatelessWidget {
  final IconData icon;
  final String text;

  CustomerListTitle({this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            "$text",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
