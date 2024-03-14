// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmRadioUI extends StatefulWidget {
  const KmRadioUI({super.key});

  @override
  State<KmRadioUI> createState() => _KmRadioUIState();
}

class _KmRadioUIState extends State<KmRadioUI> {
  int pl = 2;
  String rd = "Pizza";
  String major = "DTI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'แชร์ KM Radio',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 1,
                  groupValue: pl,
                  onChanged: (paraValue) {
                    setState(() {
                      pl = paraValue!;
                    });
                  },
                ),
                Text(
                  'Python',
                ),
                Radio(
                  value: 2,
                  groupValue: pl,
                  onChanged: (paraValue) {
                    setState(() {
                      pl = paraValue!;
                    });
                  },
                ),
                Text(
                  'JAVA',
                ),
                Radio(
                  value: 3,
                  groupValue: pl,
                  onChanged: (paraValue) {
                    setState(() {
                      pl = paraValue!;
                    });
                  },
                ),
                Text(
                  'C#',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.4),
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: "Pizza",
                        groupValue: rd,
                        onChanged: (paraValue) {
                          setState(() {
                            rd = paraValue!;
                          });
                        },
                      ),
                      Text(
                        'Pizza',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: "KFC",
                        groupValue: rd,
                        onChanged: (paraValue) {
                          setState(() {
                            rd = paraValue!;
                          });
                        },
                      ),
                      Text(
                        'KFC',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: "Amazon",
                        groupValue: rd,
                        onChanged: (paraValue) {
                          setState(() {
                            rd = paraValue!;
                          });
                        },
                      ),
                      Text(
                        'Amazon',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: "Fuji",
                        groupValue: rd,
                        onChanged: (paraValue) {
                          setState(() {
                            rd = paraValue!;
                          });
                        },
                        activeColor: Colors.pink,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Colors.blue),
                      ),
                      Text(
                        'Fuji',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RadioListTile(
              value: "DTI",
              groupValue: major,
              onChanged: (paraValue) {
                setState(() {
                  major = paraValue!;
                });
              },
              title: Text(
                'สาขา DTI',
              ),
              subtitle: Text(
                'Digital Technology abd Innovation',
              ),
              secondary: Icon(
                FontAwesomeIcons.facebook,
              ),
            ),
            RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              value: "DM",
              groupValue: major,
              onChanged: (paraValue) {
                setState(() {
                  major = paraValue!;
                });
              },
              title: Text(
                'สาขา DM',
              ),
              subtitle: Text(
                'Digital Media',
              ),
              secondary: Icon(
                FontAwesomeIcons.google,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
