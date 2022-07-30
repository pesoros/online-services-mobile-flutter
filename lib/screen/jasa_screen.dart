// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_services_mobile_flutter/widget/best_widget.dart';
import 'package:online_services_mobile_flutter/widget/kategori_widget.dart';
import 'package:online_services_mobile_flutter/widget/promo_widget.dart';
import 'package:online_services_mobile_flutter/widget/result_widget.dart';
import 'package:online_services_mobile_flutter/widget/search_widget.dart';

class JasaScreen extends StatefulWidget {
  const JasaScreen({Key key}) : super(key: key);

  @override
  State<JasaScreen> createState() => _JasaScreenState();
}

class _JasaScreenState extends State<JasaScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: (searchController.text != "")
                    ? Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 80),
                            ResultWidget(
                              kategori: "Jasa",
                              text: searchController.text,
                            )
                          ],
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 80),
                          PromoWidget(),
                          SizedBox(height: 20),
                          Text("Kategori"),
                          SizedBox(height: 10),
                          KategoriWidget(),
                          SizedBox(height: 10),
                          Text("Jasa Terbaik"),
                          SizedBox(height: 10),
                          BestWidget(),
                        ],
                      ),
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  SearchWidget(
                    controller: searchController,
                    onTextChange: (val) {
                      setState(() {});
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      onPanDown: (_) => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
