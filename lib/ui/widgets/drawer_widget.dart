import 'package:flutter/material.dart';
import 'package:flutter_cab2/ui/pages/book_taxi_page.dart';
import 'package:flutter_cab2/ui/pages/phone_reg_page.dart';
import 'package:flutter_cab2/ui/pages/promo_code_page.dart';
import 'package:flutter_cab2/ui/pages/rate_driver_page.dart';
import 'package:flutter_cab2/ui/pages/ride_history_page.dart';

import 'package:flutter_cab2/ui/pages/settings_page.dart';
import 'package:flutter_cab2/ui/pages/sharePage.dart';
import 'package:flutter_cab2/ui/pages/support_page.dart';
import 'package:flutter_cab2/ui/widgets/text_widget.dart';

import 'package:flutter_cab2/utils/styles.dart';
import 'package:share/share.dart';

// ignore: must_be_immutable
class CustomDrawerWidget extends StatelessWidget {
  String userName;

  CustomDrawerWidget({
    this.userName = 'Login/Register',
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, PhoneRegPage.routeName);
            },
            child: Container(
              height: 120,
              child: DrawerHeader(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 20,
                        child: Text(
                          '${userName?.substring(0, 1) ?? ''}',
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${userName ?? ''}',
                      style: CustomStyles.cardBoldDarkTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          DrawerWidget(
            onTap: () => Navigator.pushNamed(context, BookTaxiPage.routeName),
            leading: Image.asset(
              'assets/images/taxi.png',
              height: 25,
              width: 25,
            ),
            name: 'Book A Taxi',
          ),
          DrawerWidget(
            onTap: () =>
                Navigator.pushNamed(context, RideHistoryPage.routeName),
            leading: Image.asset(
              'assets/images/history.png',
              height: 25,
              width: 25,
            ),
            name: 'Rider History',
          ),
          DrawerWidget(
            onTap: null,
            leading: Image.asset(
              'assets/images/prime.png',
              height: 25,
              width: 25,
            ),
            name: 'Prime',
          ),
          DrawerWidget(
            onTap: () => Navigator.pushNamed(context, PromoCodePage.routeName),
            leading: Image.asset(
              'assets/images/discount.png',
              height: 25,
              width: 25,
            ),
            name: 'Offers',
          ),
          DrawerWidget(
            onTap: () => null,
            leading: Image.asset(
              'assets/images/notification.png',
              height: 25,
              width: 25,
            ),
            name: 'Notification',
          ),
          DrawerWidget(
            onTap: () {
              Navigator.pushNamed(context, SupportPage.routeName);
            },
            leading: Image.asset(
              'assets/images/about_us.png',
              height: 25,
              width: 25,
            ),
            name: 'About Us',
          ),
          DrawerWidget(
            onTap: () => Navigator.pushNamed(context, RateDriverPage.routeName),
            leading: Image.asset(
              'assets/images/rate_us.png',
              height: 25,
              width: 25,
            ),
            name: 'Rate Us',
          ),
          // DrawerWidget(
          //   onTap: () => Navigator.pushNamed(context, SettingsPage.routeName),
          //   leading: Image.asset(
          //     'assets/images/settings.png',
          //     height: 25,
          //     width: 25,
          //   ),
          //   name: 'Settings',
          // ),
          DrawerWidget(
             onTap: () => Share.share('check out my website https://protocoderspoint.com/'),
            leading: Icon(
              Icons.share,
              ),
            name: 'Share',
          ),
          Divider(),
          DrawerWidget(
            onTap: null,
            leading: Icon(
              Icons.logout,
            ),
            name: 'Logout',
          )
        ],
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  Widget leading;
  String name;
  Function onTap;
  DrawerWidget({
    @required this.name,
    @required this.leading,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: leading,
        horizontalTitleGap: -1,
        title: CustomTextWidget(
          title: name,
        ),
      ),
    );
  }
}
