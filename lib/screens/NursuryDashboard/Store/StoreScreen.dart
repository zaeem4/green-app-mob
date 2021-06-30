import 'package:flutter/material.dart';
import 'package:green_app/screens/NursuryDashboard/Store/Components/body.dart';
class StoreScreen extends StatefulWidget {
  const StoreScreen({Key key}) : super(key: key);

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
    );
  }
}
