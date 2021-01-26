import 'package:Stocker/widgets/stock_icon.dart';
import "package:flutter/material.dart";

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;

  NewsTile({this.imageUrl, this.title, this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(color: Colors.grey),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(imageUrl, fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    child:
                        Text(title, style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Text(date, style: TextStyle(color: Colors.grey, fontSize: 10.0)),
                      SizedBox(width: 20.0),
                      Row(
                        children: [
                          StockIcon(name: "MTCH"),
                          SizedBox(width: 5.0),
                          StockIcon(name: "TT"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(width: 10.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(color: Colors.grey, child: Icon(Icons.arrow_forward)),
              )
            ],
          ),
        ),
        Divider(color: Colors.grey)
      ],
    );
  }
}
