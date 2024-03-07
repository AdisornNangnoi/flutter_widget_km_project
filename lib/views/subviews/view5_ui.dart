import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class View5UI extends StatelessWidget {
  const View5UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.linkedin,
                size: MediaQuery.of(context).size.width * 0.75,
                color: Colors.lightBlue),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              'linkedin',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.height * 0.026,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
