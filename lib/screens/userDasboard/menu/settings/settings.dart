import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';

class SettingsUser extends StatefulWidget {
  @override
  _SettingsUserState createState() => _SettingsUserState();
}

class _SettingsUserState extends State<SettingsUser> {
  // bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: kPrimaryColor,
            ),
          ),
          title: new Text(
            "Setting",
            style: new TextStyle(
              color: Colors.black,
              fontFamily: 'Georgia',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(
              //   height: 30,
              // ),
              // Row(
              //   children: [
              //     Icon(Icons.settings, color: Colors.black),
              //     Text(
              //       "General Setting",
              //       style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              //     )
              //   ],
              // ),
              // Divider(
              //   height: 15,
              //   thickness: 2,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Card(
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(0)),
                  child: Column(
                children: <Widget>[
                  // ListTile(
                  //     onTap: () {
                  //       showDialog(
                  //           context: context,
                  //           builder: (BuildContext context) {
                  //             return AlertDialog(
                  //               title: Text("Select"),
                  //               content: Column(
                  //                 mainAxisSize: MainAxisSize.min,
                  //                 children: [
                  //                   Text("English(UK)"),
                  //                   Divider(
                  //                     height: 15,
                  //                     thickness: 2,
                  //                   ),
                  //                   Text("English(US)"),
                  //                   Divider(
                  //                     height: 15,
                  //                     thickness: 2,
                  //                   ),
                  //                   Text("Urdu"),
                  //                   Divider(
                  //                     height: 15,
                  //                     thickness: 2,
                  //                   ),
                  //                 ],
                  //               ),
                  //               actions: [
                  //                 FlatButton(
                  //                     onPressed: () {
                  //                       Navigator.of(context).pop();
                  //                     },
                  //                     child: Text("close")),
                  //               ],
                  //             );
                  //           });
                  //     },
                  //     leading: Icon(Icons.language, color: Colors.blueGrey),
                  //     title: Text(
                  //       "Set Language",
                  //     ),
                  //     trailing: Icon(
                  //       Icons.arrow_forward_ios_sharp,
                  //       color: Colors.black,
                  //     )),
                  // Divider(
                  //   height: 15,
                  //   thickness: 2,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Row(
                  //   children: [
                  //     Padding(padding: EdgeInsets.only(left: 15)),
                  //     Icon(Icons.location_on, color: Colors.blueGrey),
                  //     Text(
                  //       "Notifactions",
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.grey[600],
                  //       ),
                  //     ),
                  //     Transform.scale(
                  //       scale: 0.7,
                  //       child: CupertinoSwitch(
                  //           value: false, onChanged: (bool value) {}),
                  //     )
                  //   ],
                  // ),
                  // Divider(
                  //   height: 15,
                  //   thickness: 2,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Row(
                  //   children: [
                  //     Padding(padding: EdgeInsets.only(left: 15)),
                  //     Icon(Icons.swap_horizontal_circle_sharp,
                  //         color: Colors.blueGrey),
                  //     Text(
                  //       "   Dark Mode                                 ",
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.grey[600],
                  //       ),
                  //     ),
                  //     Transform.scale(
                  //       scale: 0.7,
                  //       child: CupertinoSwitch(
                  //           value: false, onChanged: (bool value) {}),
                  //     )
                  //   ],
                  // ),
                  // Divider(
                  //   height: 15,
                  //   thickness: 2,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.settings, color: Colors.black),
                      Text(
                        "Basic Information",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Divider(
                    height: 40,
                    thickness: 2,
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/tips-and-tricks");
                      },
                      leading: Icon(Icons.follow_the_signs_rounded,
                          color: Colors.blueGrey),
                      title: Text(
                        "Tips and Tricks",
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black,
                      )),
                  Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/picture-requirements");
                      },
                      leading:
                          Icon(Icons.picture_as_pdf, color: Colors.blueGrey),
                      title: Text(
                        "How To Take Picture",
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black,
                      )),
                  // Divider(
                  //   height: 15,
                  //   thickness: 2,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Row(
                  //   children: [
                  //     Icon(Icons.settings, color: Colors.black),
                  //     Text(
                  //       "Legal",
                  //       style: TextStyle(
                  //           fontSize: 18, fontWeight: FontWeight.bold),
                  //     )
                  //   ],
                  // ),
                  Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/privacy-policy");
                      },
                      leading:
                          Icon(Icons.privacy_tip_sharp, color: Colors.blueGrey),
                      title: Text(
                        "Privacy Policy",
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black,
                      )),
                  Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "/terms-and-conditions");
                      },
                      leading: Icon(Icons.control_point_duplicate_outlined,
                          color: Colors.blueGrey),
                      title: Text(
                        "Terms and Conditions",
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  // Divider(
                  //   height: 15,
                  //   thickness: 2,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // ListTile(
                  //   onTap: () {},
                  //   leading: Icon(Icons.warning_amber_outlined,
                  //       color: Colors.blueGrey),
                  //   title: Text(
                  //     "About Us",
                  //     style: TextStyle(
                  //         color: Colors.blueGrey,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                ],
              ))
            ],
          ),
        ));
  }
}
