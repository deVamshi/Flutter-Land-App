import 'package:flutter/material.dart';
import 'package:flutter_land/constants/colors.dart';
import 'package:flutter_land/screens/sigin_component.dart';
import 'package:flutter_land/screens/sign_up_component.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kMainColor,
          title: Center(
            child: Text(
              "Flutter Land",
              style: GoogleFonts.playfairDisplay(
                  color: Colors.grey[50], fontSize: 45),
            ),
          ),
          toolbarHeight: MediaQuery.of(context).size.height * 0.275,
          bottom: TabBar(labelColor: Colors.grey[50], tabs: [
            Tab(
              text: "SIGN IN",
            ),
            Tab(
              text: "SIGN UP",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            SignInComponent(),
            SignUpComponent(),
          ],
        ),
      ),
    );
  }
}
