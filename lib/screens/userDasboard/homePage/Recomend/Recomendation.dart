import 'package:flutter/material.dart';
import 'package:green_app/screens/userDasboard/homePage/Recomend/body.dart';
class RecomendSecreen extends StatefulWidget {
  const RecomendSecreen({Key key}) : super(key: key);

  @override
  _RecomendSecreenState createState() => _RecomendSecreenState();
}

class _RecomendSecreenState extends State<RecomendSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
