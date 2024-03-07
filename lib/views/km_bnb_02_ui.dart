// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class KmBnb02UI extends StatefulWidget {
  const KmBnb02UI({super.key});

  @override
  State<KmBnb02UI> createState() => _KmBnb02UIState();
}

class _KmBnb02UIState extends State<KmBnb02UI> {
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
          'แชร์ KM BNB 02',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,  
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.facebook),
            title: Text('Facebook'),
            selectedColor: Colors.blue,
            unselectedColor: Colors.grey
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.google),
            title: Text('Google'),
            selectedColor: Colors.red,
            unselectedColor: Colors.grey
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.x),
            title: Text('X'),
            selectedColor: Colors.black,
            unselectedColor: Colors.grey
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.line),
            title: Text('Line'),
            selectedColor: Colors.green,
            unselectedColor: Colors.grey
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.linkedin),
            title: Text('Linkedin'),
            selectedColor: Colors.lightBlueAccent,
            unselectedColor: Colors.grey
          ),
        ],
      ),
    );
  }
}
