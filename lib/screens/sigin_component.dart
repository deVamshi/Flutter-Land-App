import 'package:flutter/material.dart';
import 'package:flutter_land/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SignInComponent extends StatefulWidget {
  //todo : complete this component
  @override
  _SignInComponentState createState() => _SignInComponentState();
}

class _SignInComponentState extends State<SignInComponent> {
  bool _isVisible;
  @override
  void initState() {
    _isVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            TextFormField(
              // controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey[900],
                  ),
                  filled: true,
                  disabledBorder: InputBorder.none,
                  fillColor: Colors.indigo[50],
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey[900], width: 2)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1))),
              validator: null,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // controller: _emailController,
              obscureText: _isVisible,

              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  color: Colors.grey[900],
                  icon: _isVisible
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined),
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                ),
                hintText: 'Password',
                filled: true,
                disabledBorder: InputBorder.none,
                fillColor: Colors.indigo[50],
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[900], width: 2)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              validator: null,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.grey[900],
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: RaisedButton(
                onPressed: () {},
                color: kMainColor,
                child: Text(
                  "Sign In",
                  style: GoogleFonts.lato(color: Colors.grey[100]),
                ),
              ),
              height: 50,
              width: double.maxFinite,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text("-- Or --"),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: RaisedButton(
                color: Colors.white,
                onPressed: () async {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 40,
                        height: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue with Google",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
