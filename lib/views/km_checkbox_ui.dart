// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmCheckBoxUI extends StatefulWidget {
  const KmCheckBoxUI({super.key});

  @override
  State<KmCheckBoxUI> createState() => _KmCheckBoxUIState();
}

class _KmCheckBoxUIState extends State<KmCheckBoxUI> {
  bool _chk01 = false;
  bool _chk02 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'แชร์ KM Checkbox',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              onChanged: (paraValue) {
                setState(() {
                  _chk01 = paraValue!;
                });
              },
              value: _chk01,
              checkColor: Colors.red,
              activeColor: Colors.yellow,
              side: BorderSide(
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              onChanged: (paraValue) {
                setState(() {
                  _chk02 = paraValue!;
                });
              },
              value: _chk02,
              title: Text(
                'JAVA',
              ),
              checkColor: Colors.orange,
              activeColor: Colors.purple,
              side: BorderSide(
                color: Colors.red,
              ),
              secondary: Icon(FontAwesomeIcons.user),
            ),
          ],
        ),
      ),
    );
  }
}
