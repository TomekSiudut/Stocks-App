import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Back", style: TextStyle(fontWeight: FontWeight.w300)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(child: Text("Add to watchlist", style: TextStyle(color: Colors.orange))),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("AAPL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35.0)),
                    Row(
                      children: <Widget>[
                        Text("\$${190.76}",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35.0)),
                        Icon(Icons.arrow_upward, color: Colors.green),
                        Text("3.48%", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
                Text("Apple Technologies Inc.", style: TextStyle(color: Colors.grey))
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
