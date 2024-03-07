// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_km_project/views/subviews/view1_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view2_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view3_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view4_ui.dart';
import 'package:flutter_widget_km_project/views/subviews/view5_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';  

class KmBnb03UI extends StatefulWidget {
  const KmBnb03UI({super.key});

  @override
  State<KmBnb03UI> createState() => _KmBnb03UIState();
}

class _KmBnb03UIState extends State<KmBnb03UI> {
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
          'แชร์ KM BNB 03',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.green,
        activeColor: Colors.white,
        initialActiveIndex: 2,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          TabItem(
            icon: Icon(FontAwesomeIcons.facebook),
            title: 'Facebook',

          ),
          TabItem(
            icon: Icon(FontAwesomeIcons.google),
            title: 'Google',

          ),
          TabItem(
            icon: Icon(FontAwesomeIcons.x),
            title: 'X',

          ),
          TabItem(
            icon: Icon(FontAwesomeIcons.line),
            title: 'Line',

          ),
          TabItem(
            icon: Icon(FontAwesomeIcons.linkedin),
            title: 'Linkedin',

          ),
        ],
        ),

    );
  }
}
