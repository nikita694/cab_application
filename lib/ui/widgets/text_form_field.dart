import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController fromcontoller;
  String label;
  Function onChange;
  TextEditingController controller;
  IconData prefix;
  Function onTap;
  CustomTextFormField({
    this.fromcontoller,
    this.onChange,
    this.onTap,
    this.prefix,
    this.controller,
    this.label,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: validator,

      // obscureText: obscureText,
      controller: controller,
      onChanged: onChange,
      onTap: onTap,
      // maxLines: l,
      textAlign: TextAlign.start,
      inputFormatters: [],

      cursorColor: Colors.black,
      enabled: true,
      enableSuggestions: true,

      enableInteractiveSelection: false,
      textDirection: TextDirection.ltr,
      autofocus: true,
      style: TextStyle(
        height: 1,
        fontSize: 16,
      ),

      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 0.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 0.5,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 0.5,
          ),
        ),

        prefixIcon: Icon(prefix),
        filled: false,
        // fillColor: Colors.grey.shade300,
        // border: border, errorText: '',

        isDense: true,

        labelText: label,
        labelStyle: TextStyle(
          color: Colors.black54,
        ),

        //focusColor: Colors.black,
        //  hintText: 'Fr',
      ),

      //  keyboardType: TextInputType.text,
    );
  }
}
