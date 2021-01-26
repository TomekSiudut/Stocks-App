import "package:flutter/material.dart";

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          decoration: BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(40.0)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(40.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Text("Daily", style: TextStyle(color: Colors.white)),
                    )),
                Text("Weekly", style: TextStyle(color: Colors.grey)),
                Text("Monthly", style: TextStyle(color: Colors.grey)),
                Text("Yearly", style: TextStyle(color: Colors.grey)),
              ],
            ),
          )),
    );
  }
}
