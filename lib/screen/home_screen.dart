// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_services_mobile_flutter/screen/dashboard_screen.dart';
import 'package:online_services_mobile_flutter/screen/distributor_screen.dart';
import 'package:online_services_mobile_flutter/screen/jasa_screen.dart';
import 'package:online_services_mobile_flutter/screen/profile_screen.dart';
import 'package:online_services_mobile_flutter/etc/global_variable.dart'
    as variable;

class HomePageScreen extends StatefulWidget {
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;

  final konsumenPage = [
    DashboardScreen(),
    JasaScreen(),
    DistributorScreen(),
    ProfileScreen(),
  ];

  final jasaPage = [
    DashboardScreen(),
    DistributorScreen(),
    ProfileScreen(),
  ];

  final distributorPage = [
    DashboardScreen(),
    ProfileScreen(),
  ];

  final konsumenNavBar = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Dashboard',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Jasa',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.store),
      label: 'Distributor',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  final jasaNavBar = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Dashboard',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.store),
      label: 'Distributor',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  final distributorNavBar = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Dashboard',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (variable.defaultRole == 0)
            ? konsumenPage[_selectedIndex]
            : (variable.defaultRole == 1)
                ? jasaPage[_selectedIndex]
                : distributorPage[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: (variable.defaultRole == 0)
            ? konsumenNavBar
            : (variable.defaultRole == 1)
                ? jasaNavBar
                : distributorNavBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }
}
