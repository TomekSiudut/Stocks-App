import "package:flutter/material.dart";

class SmallButton extends StatelessWidget {
  const SmallButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: new BorderRadius.circular(5.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Column(
            children: [
              Text("Edit rows", style: TextStyle(color: Colors.black, fontSize: 15.0)),
            ],
          ),
        ));
  }
}
