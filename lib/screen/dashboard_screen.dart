// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_services_mobile_flutter/widget/promo_widget.dart';
import 'package:online_services_mobile_flutter/widget/summary_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 10),
            PromoWidget(),
            SizedBox(height: 20),
            SummaryWidget(),
          ],
        )),
      ),
    );
  }
}
