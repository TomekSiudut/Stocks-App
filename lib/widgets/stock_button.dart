import "package:flutter/material.dart";

class StockButton extends StatelessWidget {
  final String title;
  final color;

  StockButton({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(color: color, borderRadius: new BorderRadius.circular(5.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 12.0),
            child: Column(
              children: [
                Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0)),
              ],
            ),
          )),
    );
  }
}
