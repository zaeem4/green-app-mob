import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/authentication/components/bg_image.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:green_app/storage.dart';

import 'package:http/http.dart' as http;

class NurseryDashboard extends StatefulWidget {
  const NurseryDashboard({Key key}) : super(key: key);

  @override
  _NurseryDashboardState createState() => _NurseryDashboardState();
}

class _NurseryDashboardState extends State<NurseryDashboard> {
  String value;

  Card makeDashboardsItem(String title, IconData icon) {
    return Card(
        elevation: 3.0,
        margin: new EdgeInsets.all(25.0),
        color: kPrimaryColor,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: kPrimaryColor.withOpacity(.2)),
          child: GestureDetector(
            onTap: () {
              if (title == 'Sign Out') {
                _logout();
              } else if (title == 'Add Post') {
                Navigator.pushNamed(context, "/add-post");
              } else if (title == 'Profile Settings') {
                Navigator.pushNamed(context, "/nursery-settings");
                // } else if (title == 'Stock') {
              } else if (title == 'Store') {
                Navigator.pushNamed(context, "/nursery-store");
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 40.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                Center(
                  child: Text(title,
                      style:
                          TextStyle(fontSize: 18.0, color: kBackgroundColor)),
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 1,
        title: Text(
          "Dashboard",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.send,
              //color: kPrimaryColor,
            ),
            onPressed: () {
              //Navigator.pushReplacement(
              //context, MaterialPageRoute(builder: (context) =>()));
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          BgImage(),
          // Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: Container(
          //           height: 60,
          //           width: size.width,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.all(Radius.elliptical(3, 5)),
          //             color: Colors.white10,
          //           ),
          //           child: ListTile(
          //             onTap: () {
          //               //go to profile edit
          //             },
          //             focusColor: kPrimaryColor,
          //             title: Text(
          //               "Company Name",
          //               style: TextStyle(
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 22),
          //             ),
          //             leading: CircleAvatar(
          //               radius: 30,
          //               backgroundImage: new NetworkImage(
          //                   "https://i.tribune.com.pk/media/images/nurseries1593552436-0/nurseries1593552436-0.jpg"),
          //             ),
          //           )),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(3.0),
              children: <Widget>[
                makeDashboardsItem("Store", Icons.view_agenda),
                makeDashboardsItem(
                    "Add Post", Icons.add_photo_alternate_outlined),
                // makeDashboardsItem(
                //     "Stock", Icons.store_mall_directory_outlined),
                makeDashboardsItem("Profile Settings", Icons.settings),
                makeDashboardsItem(
                  "Sign Out",
                  Icons.logout,
                ),
              ],
            ),
          ),
        ],
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
