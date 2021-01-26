import 'package:Stocker/widgets/categories.dart';
import 'package:Stocker/widgets/line_of_chart.dart';
import 'package:Stocker/widgets/news_tile.dart';
import 'package:Stocker/widgets/small_button.dart';
import 'package:Stocker/widgets/stock_button.dart';
import "package:flutter/material.dart";
import 'package:flutter_sparkline/flutter_sparkline.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.90];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => {},
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
                        SizedBox(width: 5.0),
                        Icon(Icons.arrow_upward, color: Colors.green),
                        Text("3.48%", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
                Text("Apple Technologies Inc.", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    StockButton(title: "Buy", color: Colors.green),
                    StockButton(title: "Sell", color: Colors.red)
                  ],
                ),
                Divider(color: Colors.grey),
                Categories(),
                Stack(children: [
                  Positioned(
                    bottom: 70.0,
                    child: ClipRRect(
                      child: Sparkline(
                        data: data,
                        lineWidth: 3.0,
                        lineGradient: new LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.green, Colors.orange],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Summary",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        LineChart(price: "200"),
                        LineChart(price: "190"),
                        LineChart(price: "180"),
                        Stack(children: [
                          LineChart(price: "170"),
                          Positioned(
                            bottom: 0.10,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Container(
                                        height: 30.0,
                                        width: 30.0,
                                        color: Colors.orange,
                                        child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20.0)),
                                  ),
                                  SizedBox(width: 10.0),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Container(
                                          height: 30.0,
                                          width: 30.0,
                                          color: Colors.grey,
                                          child: Icon(Icons.radio_button_checked_outlined,
                                              color: Colors.white, size: 20.0))),
                                ],
                              ),
                            ),
                          ),
                        ])
                      ],
                    ),
                  ),
                ]),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Stock data",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        )),
                    SmallButton()
                  ],
                ),
                SizedBox(height: 5.0),
              ],
            ),
          ),
          NewsTile(
              title: "White House Tried to Lock Down Ukraine Call Records",
              imageUrl:
                  "https://media.npr.org/assets/img/2014/10/01/456476824_vert-b8e29abdf99ddb391a5a39e8c510f99cbac24d68-s800-c85.jpg",
              date: "Sept 28, 2019"),
          NewsTile(
              title: "Egypt is on Edge as Security Tightnes over Protests",
              imageUrl:
                  "https://media.pri.org/s3fs-public/styles/story_main/public/egypt-tahrir-square-revolution-mubarak-live-blog-2012-1-25.jpg?itok=ewt2gNiT",
              date: "Sept 27, 2019"),
          NewsTile(
              title: "Biotech IPOs Are Risky Business...",
              imageUrl:
                  "https://www.allenovery.com/global/-/media/allenovery/1_images/sectors/life_sciences/biotechnology/ao_hero_image_m01_sub_sector_life_sciences_biotech1.jpg?la=en-GB&h=421&w=674&mw=674&hash=0439AD17DED9ADEB8E82A82962C155B3",
              date: "Sept 26, 2019")
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
