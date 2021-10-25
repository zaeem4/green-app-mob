import 'package:flutter/material.dart';
import 'package:green_app/screens/NursuryDashboard/Store/Components/body.dart';
// import 'package:green_app/screens/userDasboard/menu/user_menu.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key key}) : super(key: key);

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Padding(
        //     padding: const EdgeInsets.only(right: 12.0),
        //     child: new IconButton(
        //       icon: Icon(Icons.menu),
        //       onPressed: () {
        //         Navigator.pushReplacement(context,
        //             MaterialPageRoute(builder: (context) => UserMenu()));
        //       },
        //     )),
        title: Text('Green Pakistan'),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 12),
        //     child: new IconButton(
        //       iconSize: 30,
        //       icon: Icon(Icons.arrow_back_sharp),
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //     ),
        //   ),
        // ],
      ),
      body: Body(),
    );
  }
}
