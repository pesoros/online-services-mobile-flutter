// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class KategoriWidget extends StatelessWidget {
  const KategoriWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children: List.generate(8, (index) {
          return Container(
            height: 50,
            color: Colors.grey,
            child: Center(
              child: Text(
                'Kategori $index',
              ),
            ),
          );
        }),
      ),
    );
  }
}
