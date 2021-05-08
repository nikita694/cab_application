import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cab2/ui/pages/customalertdialog.dart';
import 'package:flutter_cab2/ui/pages/phone_reg_page.dart';
import 'package:flutter_cab2/ui/pages/ride_details_page.dart';

class UserDetailPage extends StatefulWidget {
  static final routeName = "user-detail-page";

  @override
  UserDetailPageState createState() => UserDetailPageState();
}

class UserDetailPageState extends State<UserDetailPage> {
  TextEditingController text = TextEditingController();
  TextEditingController text1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // /  backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'From -> TO',
        ),
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 30.0,
              color: Colors.lightBlue[300],
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: new Text(
                  "Enter Travler Details",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email ID',
                ),
              ),
            ),
            Divider(),
            Container(
              height: 40,
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                      style: BorderStyle.solid,
                    ),
                  ),
                  labelText: 'Number',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.clear),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                        style: BorderStyle.solid,
                      ),
                    ),
                    labelText: 'Pick Up Address',
                    hintStyle: TextStyle(fontSize: 12),
                    hintText: 'flat, houseNo.,Landmark '),
                keyboardType: TextInputType.number,
              ),
            ),
            Divider(),
            Container(
              height: 40,
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                      style: BorderStyle.solid,
                    ),
                  ),
                  labelText: 'Dropping Point',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Divider(
              thickness: 10,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Faire Detail',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),

                  // color: Colors.lightBlue[700],
                  textColor: Colors.lightBlue,
                  onPressed: () {
                    Navigator.of(context).pushNamed(RideDetailsPage.routeName);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  child: Text(
                    'Do you have Additional Request?',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),

                  //color: Colors.lightBlue[700],
                  textColor: Colors.lightBlue,
                  onPressed: () {
                    Navigator.of(context).pushNamed(CustomDialog.routeName);
                  },
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[350],
                  radius: 15,
                  child: Icon(
                    Icons.clear_rounded,
                    color: Colors.lightBlue,
                  ),
                )
              ],
            ),
            Divider(
              thickness: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PhoneRegPage.routeName);
                // Navigator.of(context).pushNamed(PhoneRegPage.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: new Row(children: <Widget>[
                  Text(
                    'Existing user?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Spacer(),
                  FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text('LOGIN'),
                    color: Colors.lightBlue[300],
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, PhoneRegPage.routeName);
                    },
                  ),
                ]),
              ),
            ),
            Divider(
              thickness: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              horizontalTitleGap: 0,
              leading: CircleAvatar(
                radius: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  // child: Icon(
                  //   Icons.circle,
                  //   color: Colors.transparent,
                  // ),
                ),
              ),
              title: Text(
                'Gold AHA Prime',
                style: TextStyle(
                  // fontSize: 16,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                'Save big on your trip. Use our coupons',
                style: TextStyle(
                  // fontSize: 16,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              horizontalTitleGap: 0,
              leading: CircleAvatar(
                radius: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  // child: Icon(
                  //   Icons.circle,
                  //   color: Colors.transparent,
                  // ),
                ),
              ),
              title: Text(
                'Gold AHA Prime',
                style: TextStyle(
                  // fontSize: 16,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                'Save big on your trip. Use our coupons',
                style: TextStyle(
                  // fontSize: 16,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              height: 100,
              width: 370,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.lightBlue,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Spacer(),
                      Icon(Icons.clear)
                    ],
                  ),
                  Text(
                    'Gold AHA Prime',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Membership is activated',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Fees: 199, Discount :250',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                text: 'By selecting pay,you agree to AHATaxis ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms of Services',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
