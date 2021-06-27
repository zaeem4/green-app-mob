import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: kBackgroundColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
