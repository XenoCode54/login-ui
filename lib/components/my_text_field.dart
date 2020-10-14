import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final IconData iconData;
  final bool obscureText;

  const MyTextField(
      {Key key,
      @required this.hint,
      @required this.iconData,
      @required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        color: kBlack,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                color: Colors.white,
                child: TextField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: TextStyle(color: kGrey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
