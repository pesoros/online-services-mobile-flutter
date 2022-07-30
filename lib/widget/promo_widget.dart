// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: (index == 4) ? 0 : 10),
              width: MediaQuery.of(context).size.width / 1.2,
              color: Colors.grey,
              child: Center(
                child: Text("Promo " + index.toString()),
              ),
            );
          }),
    );
  }
}
