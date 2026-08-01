import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/dashboard.dart';
import 'package:flutter_application_1/views/phones.dart';
import 'package:flutter_application_1/views/sales.dart';
import 'package:flutter_application_1/views/suppliers.dart';

var screens = [
  Dashboard(),
  Phones(),
  Sales(),
  Suppliers(),
];
int position = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.blueAccent,
    items: <Widget>[
      Icon(Icons.dashboard, size: 30),
      Icon(Icons.phone, size: 30),
      Icon(Icons.shopping_cart, size: 30),
      Icon(Icons.business, size: 30),
      
    ],
    onTap: (index) {
      setState(() {
        position = index;
      });
      //Handle button tap
    },
  ),
      body: screens[position]
      );
    
  }
}