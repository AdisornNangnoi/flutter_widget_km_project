// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmDropDownUI extends StatefulWidget {
  const KmDropDownUI({super.key});

  @override
  State<KmDropDownUI> createState() => _KmDropDownUIState();
}

class _KmDropDownUIState extends State<KmDropDownUI> {
  List<String> _plList = [
    "JAVA",
    "Python",
    "C#",
    "GO",
    "Dart",
  ];

  String _pl = "JAVA";

  List<String> _uList = [
    'SAU',
    'TU',
    'CMU',
    'CHULA',
    'MU',
  ];

  String _university = 'CMU';


List<String> _fList = [
  'Pizza',
  'KFC',
  'Amazon',
  'Fuji',
];

String _food = 'Pizza';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'แชร์ KM Dropdown',
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
            DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _pl,
                onChanged: (paraValue) {
                  setState(() {
                    _pl = paraValue!;
                  });
                },
                items: _plList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                isExpanded: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _university,
                    onChanged: (paraValue) {
                      setState(() {
                        _university = paraValue!;
                      });
                    },
                    items: _uList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.school,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(e),
                                ],
                              ),
                            ))
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _food,
                    onChanged: (paraValue) {
                      setState(() {
                        _food = paraValue!;
                      });
                    },
                    items: _fList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.bowlFood,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(e),
                                ],
                              ),
                            ))
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
