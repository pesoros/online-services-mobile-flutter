// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_services_mobile_flutter/etc/global_variable.dart'
    as variable;
import 'package:online_services_mobile_flutter/model/role_model.dart';
import 'package:online_services_mobile_flutter/screen/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  RoleModel _selected;

  List<RoleModel> listRole = [
    RoleModel(0, "Konsumen"),
    RoleModel(1, "Jasa"),
    RoleModel(2, "Distributor"),
  ];

  @override
  void initState() {
    _selected = listRole[variable.defaultRole];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              DropdownButton<RoleModel>(
                isExpanded: true,
                value: _selected,
                onChanged: (RoleModel newValue) {
                  setState(() {
                    _selected = newValue;
                    variable.defaultRole = newValue.id;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomePageScreen())));
                  });
                },
                items: listRole
                    .map<DropdownMenuItem<RoleModel>>((RoleModel value) {
                  return DropdownMenuItem<RoleModel>(
                      value: value, child: Text(value.name));
                }).toList(),
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: Center(
                  child: Text("Profile: " + _selected.name),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
