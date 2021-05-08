import 'package:flutter/material.dart';
import 'package:flutter_cab2/ui/pages/credit_card_page.dart';
import 'package:flutter_cab2/ui/pages/ride_details_page.dart';
import 'package:flutter_cab2/ui/pages/userdetailPage.dart';

class TaxiratePage extends StatefulWidget {
  @override
  TaxiratePageState createState() => TaxiratePageState();
  static final routeName = "taxirate";
}

class TaxiratePageState extends State<TaxiratePage> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Taxi Rates"),
      ),
      body: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              child: Container(
                height: 170,
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                            fit: BoxFit.fill)),
                  ),
                  // Spacer(
                  //   flex: 1,
                  // ),
                  Expanded(
                    flex: 14,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Ac',
                                style: TextStyle(
                                    color: Color(0xff666666), fontSize: 12),
                              ),
                              VerticalDivider(
                                thickness: 1,
                                width: 10,
                                color: Colors.black,
                              ),
                              Text(
                                '4 Seater',
                                style: TextStyle(
                                    color: Color(0xff666666), fontSize: 12),
                              ),
                              VerticalDivider(
                                thickness: 1,
                                width: 10,
                                color: Colors.black,
                              ),
                              Text(
                                '2 Bags',
                                style: TextStyle(
                                    color: Color(0xff666666), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("₹ 4766", style: TextStyle(fontSize: 25.0)),
                        Text(
                          '*with CAB Prime ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        Text(
                          '₹ 5016',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          ' * Regular Fare',
                          style: TextStyle(fontSize: 10),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                child: Text('Book Now'),
                                color: Colors.lightBlue[300],
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(UserDetailPage.routeName);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FlatButton(
                                child: Text('Faire Detail'),
                                color: Colors.lightBlue[300],
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(RideDetailsPage.routeName);
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            );
          }),
    );
  }
}
