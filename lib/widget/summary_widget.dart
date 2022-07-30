// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Center(
                child: Text("Summary"),
              ),
            )
          ],
        ));
  }
}
