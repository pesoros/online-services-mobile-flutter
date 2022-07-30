// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_services_mobile_flutter/widget/product_widget.dart';

class BestWidget extends StatelessWidget {
  const BestWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Jasa " + index.toString()),
            tileColor: Colors.grey,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => ProductWidget(
                      title: "Jasa " + index.toString(),
                      kategori: "Jasa",
                    )),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 0,
            color: Colors.black,
          );
        },
      ),
    );
  }
}
