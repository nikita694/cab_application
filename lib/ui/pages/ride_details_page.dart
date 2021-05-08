import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cab2/ui/widgets/header_widget.dart';
import 'package:flutter_cab2/utils/constants.dart';
import 'package:flutter_cab2/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RideDetailsPage extends StatefulWidget {
  static final routeName = "ride-details-page";

  @override
  _RideDetailsPageState createState() => _RideDetailsPageState();
}

class _RideDetailsPageState extends State<RideDetailsPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leadingWidth: ,
        title: Text(
          "Ride Details",
          style: TextStyle(letterSpacing: 0.5),
        ),
      ),
      body: Column(
        children: <Widget>[
          // NoLogoHeaderWidget(height: mQ.height * 0.4),

          Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  RideDetailosItemWIDGET(
                    leading: FontAwesomeIcons.car,
                    title: "Base Fare",
                    trailing: "Included",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RideDetailosItemWIDGET(
                    leading: FontAwesomeIcons.car,
                    title: "Included Kms",
                    trailing: "320Km",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RideDetailosItemWIDGET(
                    leading: FontAwesomeIcons.car,
                    title: "Vehicle & fuel charges ",
                    trailing: "Included",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RideDetailosItemWIDGET(
                    leading: FontAwesomeIcons.car,
                    title: "One Pickup & One Drop",
                    trailing: "Included",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RideDetailosItemWIDGET(
                    leading: FontAwesomeIcons.car,
                    title: "GST(5% on Base Fare)",
                    trailing: "Not Included",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RideDetailosItemWIDGET(
                    leading: FontAwesomeIcons.city,
                    title: "State, Toll Tax",
                    trailing: "Included",
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 0,
                    leading: Icon(
                      FontAwesomeIcons.moneyCheck,
                      color: Constatnts.primaryColor,
                      size: 20,
                    ),
                    title: Text("PAYMENT",
                        style: CustomStyles.smallLightTextStyle),
                    subtitle: Text(
                      "Rs. 5000",
                      style: CustomStyles.cardBoldDarkTextStyle,
                    ),
                    trailing: Text(
                      "CARD PAYMENT",
                      style: CustomStyles.smallLightTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Divider(
            height: 10,
            indent: 6.0,
            color: Colors.black87,
          ),
          Card(
            elevation: 10,
            child: new Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Other Charges',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                OtherChargesDataWidget(
                  title: "Base Fare",
                  subTitle: "Included",
                ),
                SizedBox(
                  height: 8,
                ),
                OtherChargesDataWidget(
                  title: "Base Fare",
                  subTitle: "Included",
                ),
                SizedBox(
                  height: 8,
                ),
                OtherChargesDataWidget(
                  title: "Base Fare",
                  subTitle: "Included",
                ),
                SizedBox(
                  height: 8,
                ),
                OtherChargesDataWidget(
                  title: "Base Fare",
                  subTitle: "Included",
                ),
                SizedBox(
                  height: 8,
                ),
                OtherChargesDataWidget(
                  title: "Base Fare",
                  subTitle: "Included",
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RideDetailosItemWIDGET extends StatelessWidget {
  IconData leading;
  String title;
  String trailing;
  RideDetailosItemWIDGET({
    this.leading,
    this.title,
    this.trailing,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          leading,
          color: Constatnts.primaryColor,
          size: 22,
        ),
        SizedBox(
          width: 18,
        ),
        Text(title, style: CustomStyles.smallLightTextStyle),
        Spacer(),
        Text(
          trailing,
          style: CustomStyles.smallLightTextStyle,
        ),
      ],
    );

    // ListTile(
    //   contentPadding: EdgeInsets.zero,
    //   horizontalTitleGap: 0,
    //   leading: Icon(
    //     leading,
    //     color: Constatnts.primaryColor,
    //     size: 25,
    //   ),
    //   title: Text(title, style: CustomStyles.smallLightTextStyle),
    //   trailing: Text(
    //     trailing,
    //     style: CustomStyles.smallLightTextStyle,
    //   ),
    // );
  }
}

class OtherChargesDataWidget extends StatelessWidget {
  String title;
  String subTitle;
  OtherChargesDataWidget({
    this.subTitle,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          Text(title, style: CustomStyles.smallLightTextStyle),
          Spacer(),
          Text(subTitle, style: CustomStyles.smallLightTextStyle)
        ],
      ),
    );
  }
}
