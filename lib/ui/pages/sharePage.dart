import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class SharePage extends StatefulWidget {
  static final routeName = "sharePage";

  @override
  SharePageState createState() => SharePageState();
}

class SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          Center(
            child: MaterialButton(
              elevation: 5.0,
              height: 50.0,
              minWidth: 150,
             // color: Colors.blueAccent,
              //textColor: Colors.white,
          //   child: Icon(Icons.share),
              onPressed: () {
                Share.share(
                    'check out my website https://protocoderspoint.com/'
                    );
              },
            ),
          ),
          
         
        ],
      ),
    );
  }
}
