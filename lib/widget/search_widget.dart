// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({Key key, this.controller, this.onTextChange}) : super(key: key);

  TextEditingController controller;
  Function(String) onTextChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).scaffoldBackgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintStyle: TextStyle(color: Colors.grey),
          hintText: "Cari Jasa",
        ),
        onChanged: (val) => onTextChange(controller.text),
      ),
    );
  }
}
