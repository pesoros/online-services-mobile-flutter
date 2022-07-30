// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:online_services_mobile_flutter/widget/product_widget.dart';

class ResultWidget extends StatefulWidget {
  ResultWidget({Key key, this.kategori, this.text}) : super(key: key);

  String kategori;
  String text;

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 21,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(
                  widget.kategori + " " + widget.text + " " + index.toString()),
              subtitle: Text("Kategori: " + widget.kategori),
              tileColor: Colors.grey,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ProductWidget(
                        title: widget.text + " " + index.toString(),
                        kategori: widget.kategori,
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
      ),
      onPanDown: (_) => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
