import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:green_app/storage.dart';
// import 'package:green_app/navbars/User/editProfileUSer.dart';
// import 'package:green_app/navbars/User/settingsUser.dart';
// import 'package:green_app/Forms/registration_page.dart';

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
          padding: EdgeInsets.zero,
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
                  color: Colors.green,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/bottom_img_1.png',
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
              onTap: () => {
                Storage.prefs.setBool("loggedIn", false),
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/login', (Route<dynamic> route) => false)
              },
            ),
          ],
        ),
      ),
    );
  }
}
