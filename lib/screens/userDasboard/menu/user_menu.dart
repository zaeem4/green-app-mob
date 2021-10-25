import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:green_app/storage.dart';

import 'package:http/http.dart' as http;

class UserMenu extends StatefulWidget {
  @override
  _UserMenuState createState() => _UserMenuState();
}

class _UserMenuState extends State<UserMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Green Pakistan'),
      ),
      body: Drawer(
        child: ListView(
          padding: EdgeInsets.only(left: 10, right: 10),
          children: <Widget>[
            //UsNavBg(),
            DrawerHeader(
              // child: Text(
              //   'Side menu',
              //   style: TextStyle(
              //       color: Colors.green,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 30),
              // ),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      'assets/images/iconpic.png',
                    ),
                  )),
              child: null,
            ),

            // Color(Colors.black38),
            // ListTile(
            //   leading: Icon(Icons.input),
            //   title: Text('Welcome'),
            //   onTap: () => {},
            // ),
            // ListTile(
            //   leading: Icon(Icons.verified_user),
            //   title: Text('Profile'),
            //   onTap: () => {
            //     Navigator.pushReplacement(context,
            //         MaterialPageRoute(builder: (context) => UserEditProfile()))
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => {Navigator.pushNamed(context, "/user-settings")},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => {_logout()},
            ),
          ],
        ),
      ),
    );
  }

  _logout() async {
    try {
      var token = Storage.prefs.getString('token');
      var url = Uri.parse(server + "/api/logout");

      final response = await http.post(url, headers: {
        'Authorization': 'Bearer $token',
      }, body: {});

      Storage.prefs.setBool("loggedIn", false);
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
    } catch (e) {
      showAlertDialog(context, "Error", e.toString());
    }
  }
}
