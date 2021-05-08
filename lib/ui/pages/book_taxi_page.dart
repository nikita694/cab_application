import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cab2/ui/pages/citynamePage.dart';
import 'package:flutter_cab2/ui/pages/tab_body/one_way_tab.dart';
import 'package:flutter_cab2/ui/pages/taxi_ratePage.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:flutter_cab2/ui/widgets/drawer_widget.dart';
// import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:flutter_cab2/ui/widgets/text_widget.dart';

import 'tab_body/airport_body_page.dart';
import 'tab_body/hourly_rental_body_page.dart';
import 'tab_body/rounded_way_body.dart';

class BookTaxiPage extends StatefulWidget {
  static final routeName = "book-taxi-page";
  static String tab = "tab";

  @override
  _BookTaxiPageState createState() => _BookTaxiPageState();
}

class _BookTaxiPageState extends State<BookTaxiPage>
    with SingleTickerProviderStateMixin {
  Color changeColor = Colors.grey[800];

  TabController _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              "Join AHA Prime TO Get Exclusive Benifits",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, TaxiratePage.routeName);
          }),
      drawer: CustomDrawerWidget(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          title: CustomTextWidget(
            title: 'CAB',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: CachedNetworkImageProvider(
                'https://www.dehraduncab.in/images/slider2.jpg',
              ),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "SAVE UP TO 50% ONE ONE WAY",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 0),
                child: Text(
                  "OUTSTATION TAXI RIDES",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        controller: _controller,
                        isScrollable: false,
                        indicatorPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                        // indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                          color: Colors.lightBlue[300],
                        ),
                        //  labelColor: Colors.white,

                        // unselectedLabelColor: Colors.black,
                        // isScrollable: true,

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
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 450,
                          minHeight: 200,
                        ),
                        child: TabBarView(
                          // dragStartBehavior: DragStartBehavior.down,
                          physics: NeverScrollableScrollPhysics(),
                          controller: _controller,
                          children: <Widget>[
                            OneWayPage(),
                            RoundedWayPage(),
                            AirportBodyPage(),
                            HourlyRentalBody()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
