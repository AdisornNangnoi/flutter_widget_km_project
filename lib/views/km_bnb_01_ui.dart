// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmBnb01UI extends StatefulWidget {
  const KmBnb01UI({super.key});

  @override
  State<KmBnb01UI> createState() => _KmBnb01UIState();
}

class _KmBnb01UIState extends State<KmBnb01UI> {
  List<Widget> _showView = [
    View1UI(),
    view2UI(),
    View3UI(),
    View4UI(),
    View5UI(),
  ];

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'แชร์ KM BNB 01',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.yellow,
        currentIndex: _currentIndex,  
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.facebook),
            label: 'Facebook',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.google),
            label: 'Google',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.x),
            label: 'X',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.line),
            label: 'Line',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.linkedin),
            label: 'Linkedin',
            backgroundColor: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
