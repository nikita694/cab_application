import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  @override
  _CustomDialogState createState() => _CustomDialogState();
  static final routeName = "customalert";
}

 showConfirmationDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return CustomDialog();
      },
    );
  }
class _CustomDialogState extends State<CustomDialog> {
  ScrollController _scrollController = ScrollController();
  List<bool> _isChecked = [false, false];
  bool canUpload = false;
  List<String> _texts = [
    "Carrying Pet.",
    "Need 7+1 seater.",
   //"Carrierover the top of vehicle.",
    //" Senior Citizen travelling.",
   // "Booking for someone else.",
  ];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Additional Request'),
      
      content: Container(
       // width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              
              child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(18.0),
                  children: [
                    ListView.builder(
                            controller: _scrollController,
                            //child: ScrollablePositionedList.builder(
                      shrinkWrap: true,
                      itemCount: _texts.length,
                      itemBuilder: (_, index) {
                        return CheckboxListTile(
                          title: Text(_texts[index]),
                          value: _isChecked[index],
                          onChanged: (val) {
                            setState(() {
                              _isChecked[index] = val;
                              canUpload = true;
                              for (var item in _isChecked) {
                                if (item == false) {
                                  canUpload = false;
                                }
                              }
                            });
                          },
                        );
                      },
                    ),
                ]),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Material(
              elevation: 5.0,
              color: Colors.lightBlue[300],
                              child: MaterialButton(
                                padding: EdgeInsets.fromLTRB(
                                    10.0, 5.0, 10.0, 5.0),
                                onPressed: () {},
                                child: Text("Save",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              ),
                            ),
                            Material(
                              elevation: 5.0,
                             color: Colors.lightBlue[300],
                              child: MaterialButton(
                                padding: EdgeInsets.fromLTRB(
                                    10.0, 5.0, 10.0, 5.0),
                                onPressed: () {
                                  setState(() {
                                    Navigator.of(context).pop();
                                  });
                                },
                                child: Text("Cancel",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              ),
                            ),
                            Material(
                              elevation: 5.0,
                            color: Colors.lightBlue[300],
                              child: MaterialButton(
                                padding: EdgeInsets.fromLTRB(
                                    10.0, 5.0, 10.0, 5.0),
                                onPressed: () {},
                                child: Text("Select All",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              ),
                            ),
                          ],
    );
  }
}
