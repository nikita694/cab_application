import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String id = "home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Cab'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("SAVE UP TO 50% ONE ONE WAY"),
            Text(
              "OUTSTATION TAXI RIDES",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.only(bottom: 8.0),
              controller: _controller,
              tabs: <Tab>[
                new Tab(
                  child: Text(
                    'One Way',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                new Tab(
                  child: Text(
                    'Rounded Way',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                new Tab(
                  child: Text(
                    'Airport',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                new Tab(
                  child: Text(
                    'Hourly Rental',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
