import 'package:flutter/material.dart';

class DistributorScreen extends StatefulWidget {
  const DistributorScreen({Key key}) : super(key: key);

  @override
  State<DistributorScreen> createState() => _DistributorScreenState();
}

class _DistributorScreenState extends State<DistributorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: const [Text("Distributor")],
        )),
      ),
    );
  }
}
