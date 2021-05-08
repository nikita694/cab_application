import 'package:flutter/material.dart';
import 'package:flutter_cab2/ui/pages/add_credit_card_page.dart';
import 'package:flutter_cab2/ui/pages/citynamePage.dart';
import 'package:flutter_cab2/ui/pages/credit_card_page.dart';
import 'package:flutter_cab2/ui/pages/customalertdialog.dart';
import 'package:flutter_cab2/ui/pages/home_page.dart';
import 'package:flutter_cab2/ui/pages/otp_page.dart';
import 'package:flutter_cab2/ui/pages/phone_reg_page.dart';
import 'package:flutter_cab2/ui/pages/promo_code_page.dart';
import 'package:flutter_cab2/ui/pages/rate_driver_page.dart';
import 'package:flutter_cab2/ui/pages/ride_details_page.dart';
import 'package:flutter_cab2/ui/pages/ride_history_page.dart';
import 'package:flutter_cab2/ui/pages/settings_page.dart';
import 'package:flutter_cab2/ui/pages/sharePage.dart';
import 'package:flutter_cab2/ui/pages/support_page.dart';

import 'package:flutter_cab2/ui/pages/taxi_movement_page.dart';
import 'package:flutter_cab2/ui/pages/taxi_ratePage.dart';
import 'package:flutter_cab2/ui/pages/userdetailPage.dart';

import 'package:flutter_cab2/utils/custom_route.dart';

import 'ui/pages/book_taxi_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cab',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //  theme: ThemeData(
      // is not restarted.
      //primarySwatch: Colors.lightBlue,
      // pageTransitionsTheme: PageTransitionsTheme(builders: {
      //   // TargetPlatform.iOS: CustomPageTransitionBuilder(),
      //   TargetPlatform.android: CustomPageTransitionBuilder(),
      // }),
      // ),
      home: BookTaxiPage(),
      //  initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        PhoneRegPage.routeName: (context) => PhoneRegPage(),
        OtpPage.routeName: (context) => OtpPage(),
        BookTaxiPage.routeName: (context) => BookTaxiPage(),
        TaxiMovementPage.routeName: (context) => TaxiMovementPage(),
        RideHistoryPage.routeName: (context) => RideHistoryPage(),
        SettingsPage.routeName: (context) => SettingsPage(),
        SupportPage.routeName: (context) => SupportPage(),
        CreditCardPage.routeName: (context) => CreditCardPage(),
        RideDetailsPage.routeName: (context) => RideDetailsPage(),
        SharePage.routeName: (context) => SharePage(),
        CustomDialog.routeName: (context) => CustomDialog(),
        PromoCodePage.routeName: (context) => PromoCodePage(),
        //   CitynamePage.routeName: (context) => CitynamePage(),
        UserDetailPage.routeName: (context) => UserDetailPage(),
        TaxiratePage.routeName: (context) => TaxiratePage(),
        CreditCardPage.routeName: (context) => CreditCardPage(),
        AddCreditCardPage.routeName: (context) => AddCreditCardPage(),
        RateDriverPage.routeName: (context) => RateDriverPage(),
        RideDetailsPage.routeName: (context) => RideDetailsPage()
      },
    );
  }
}
