import 'package:demo/components/my_text_field.dart';
import 'package:demo/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPink, kPurple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      'welcome',
                      style: GoogleFonts.openSans(
                          fontSize: 50, color: Colors.white),
                    ),
                  ),
                  Text(
                    'Sign in to continue',
                    style:
                        GoogleFonts.openSans(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Image.asset('images/avartar.png'),
                      ),
                      backgroundColor: Colors.white,
                      radius: 50,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyTextField(
                      hint: 'Username',
                      obscureText: false,
                      iconData: Icons.person,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextField(
                      hint: 'Password',
                      obscureText: true,
                      iconData: Icons.lock,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            focusColor: kBlack,
                            checkColor: kGrey,
                            activeColor: kBlack,
                            value: checked,
                            onChanged: (newValue) {
                              setState(() {
                                checked = newValue;
                              });
                            },
                          ),
                          Container(
                            width: size.width * 0.685,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Remember me',
                                  style: GoogleFonts.openSans(
                                      color: Colors.white, fontSize: 12),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.openSans(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      color: kBlack,
                      textColor: Colors.white,
                      child: Text(
                        'LOGIN',
                        style: GoogleFonts.openSans(),
                      ),
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
