import 'package:flutter/material.dart';
import 'package:flutter_cab2/ui/widgets/text_form_field.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import '../taxi_ratePage.dart';

class HourlyRentalBody extends StatefulWidget {
  @override
  HourlyRentalBodyState createState() => new HourlyRentalBodyState();
}

class HourlyRentalBodyState extends State<HourlyRentalBody>
    with TickerProviderStateMixin {
  List<String> lstRent = [
    "2Hr.20Km",
    "2Hr.20Km",
    "2Hr.20Km",
    "2Hr.20Km",
    "2Hr.20Km",
    "2Hr.20Km",
    "2Hr.20Km"
  ];
  String selectedRent = "";

  TextEditingController timeCtl = TextEditingController();
  TextEditingController fromcontoller = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  TextEditingController tocontoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),

          CustomTextFormField(
            label: 'From',
            prefix: Icons.my_location_rounded,
          ),
          SizedBox(
            height: 20,
          ),

          CustomTextFormField(
            label: 'Start Date',
            prefix: Icons.calendar_today,
            controller: dateController,
            onTap: () async {
              var date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100));
              dateController.text = date.toString().substring(0, 10);
            },
          ),

          SizedBox(
            height: 20,
          ),

          //timer
          CustomTextFormField(
            controller: timeCtl,
            onTap: () async {
              TimeOfDay time = TimeOfDay.now();
              FocusScope.of(context).requestFocus(new FocusNode());

              TimeOfDay picked =
                  await showTimePicker(context: context, initialTime: time);
              if (picked != null && picked != time) {
                timeCtl.text = picked.toString(); // add this line.
                setState(() {
                  time = picked;
                  timeCtl.text = picked.format(context);
                });
              }
            },
            label: 'Start Time',
            prefix: Icons.timer,
          ),

          SizedBox(
            height: 20,
          ),

          DropDownFormField(
            titleText: 'For Rent',
            hintText: 'Please choose Rent',
            value: selectedRent,
            onSaved: (value) {
              setState(() {
                selectedRent = value;
              });
            },
            onChanged: (value) {
              setState(() {
                selectedRent = value;
              });
            },
            dataSource:
                // lstRent
                //     .map((item) => ({"display": item, "value": item}))
                //     .toList(),
                [
              {
                "display": "Running",
                "value": "Running",
              },
              {
                "display": "Climbing",
                "value": "Climbing",
              },
              {
                "display": "Walking",
                "value": "Walking",
              },
              {
                "display": "Swimming",
                "value": "Swimming",
              },
              {
                "display": "Soccer Practice",
                "value": "Soccer Practice",
              },
              {
                "display": "Baseball Practice",
                "value": "Baseball Practice",
              },
              {
                "display": "Football Practice",
                "value": "Football Practice",
              },
            ],
            textField: 'display',
            valueField: 'value',
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  "View Taxi Rates",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, TaxiratePage.routeName);
              })
         
         
         
          // DropDownFormField(
          //   titleText: 'Rent For',
          //   hintText: 'Please choose rent',
          //   filled: false,
          //   value: selectedRent,
          //   onSaved: (value) {
          //     setState(() {
          //       selectedRent = value;
          //     });
          //   },
          //   onChanged: (value) {
          //     setState(() {
          //       selectedRent = value;
          //     });
          //   },
          //   dataSource: lstRent
          //       .map((e) => ({
          //             'display': e,
          //             'value': e,
          //           }))
          //       .toList(),
          //   textField: 'display',
          //   valueField: 'value',
          // ),
        ],
      ),
    );
  }
}
