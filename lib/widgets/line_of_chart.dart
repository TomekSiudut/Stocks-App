import "package:flutter/material.dart";

class LineChart extends StatelessWidget {
  final String price;

  LineChart({this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(height: 20.0),
        Text(price, style: TextStyle(color: Colors.grey, fontSize: 10.0)),
        Divider(color: Colors.grey)
      ],
    );
  }
}
