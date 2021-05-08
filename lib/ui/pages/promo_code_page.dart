import 'package:flutter/material.dart';
import 'package:flutter_cab2/ui/widgets/header_widget.dart';
import 'package:flutter_cab2/utils/constants.dart';
import 'package:flutter_cab2/utils/styles.dart';

class PromoCodePage extends StatelessWidget {
  static final routeName = "promo-code";
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            width: mQ.width,
            height: mQ.height,
          ),
          NoLogoHeaderWidget(height: mQ.height * 0.3),
          // Positioned(
          //     top: 100,
          //     left: 10,
          //     right: 10,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Container(
          //         alignment: Alignment.center,
          //         width: mQ.width,
          //         height: mQ.height * 0.3,
          //         decoration: new BoxDecoration(
          //           shape: BoxShape.rectangle,
          //           color: Colors.white,
          //           borderRadius: new BorderRadius.all(Radius.circular(5.0)),
          //           boxShadow: [
          //             BoxShadow(
          //                 color: Color(0x29000000),
          //                 offset: Offset(0, 5),
          //                 blurRadius: 6,
          //                 spreadRadius: 0)
          //           ],
          //         ),
          //         child: Container(
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: <Widget>[
          //               TextField(
          //                 textAlign: TextAlign.center,
          //                 style: CustomStyles.cardBoldDarkTextStyle,
          //                 autofocus: true,
          //                 cursorColor: Constatnts.primaryColor,
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               Text(
          //                 "PROMO CODE",
          //                 style: CustomStyles.cardBoldDarkTextStyle2,
          //               ),
          //             ],
          //           ),
          //           width: 200,
          //         ),
          //       ),
          //     )
          //     ),
          // Positioned(
          //     bottom: 10,
          //     right: 5,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "",
          //           style: CustomStyles.cardBoldDarkTextStyleGreen,
          //         ),
          //         MaterialButton(
          //           onPressed: () {},
          //           color: Colors.lightBlue,
          //           textColor: Colors.white,
          //           child: Icon(
          //             Icons.arrow_forward,
          //             size: 15,
          //           ),
          //           padding: EdgeInsets.all(6),
          //           shape: CircleBorder(),
          //         )
          //       ],
          //     )),
          Positioned(
            top: 40.0,
            left: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.white,
                  textColor: Colors.lightBlue,
                  child: Icon(
                    Icons.arrow_back,
                    size: 15,
                  ),
                  padding: EdgeInsets.all(6),
                  shape: CircleBorder(),
                ),
                Text(
                  "OFFERS",
                  style: CustomStyles.cardBoldTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
