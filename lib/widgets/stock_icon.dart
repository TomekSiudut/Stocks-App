import "package:flutter/material.dart";

class StockIcon extends StatelessWidget {
  final String name;
  StockIcon({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Text(name, style: TextStyle(fontSize: 10.0)),
      ),
    );
  }
}
