import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/authentication/login_page.dart';
import 'package:green_app/screens/nursuryDashboard/nursery_dashboard.dart';
import 'Components/EditProfile.dart';

class SellerSettings extends StatefulWidget {
  @override
  _SellerSettingsState createState() => _SellerSettingsState();
}

class _SellerSettingsState extends State<SellerSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: kPrimaryColor,
            elevation: 1,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: kBackgroundColor,
              ),
            ),
            title: Text(
              "Account Profile",
              style: TextStyle(
                  color: kBackgroundColor, fontWeight: FontWeight.w500),
            )),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                margin: const EdgeInsets.all(8.0),
                color: kPrimaryColor,
                child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/nursery-profile");
                    },
                    title: Text(
                      "Update Settings",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    // leading: CircleAvatar(
                    //   backgroundImage: new NetworkImage(
                    //       "https://i.tribune.com.pk/media/images/nurseries1593552436-0/nurseries1593552436-0.jpg"),
                    // ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(height: 20.0),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      // ListTile(
                      //     onTap: () {
                      //       //go to profile edit
                      //     },
                      //     leading: Icon(Icons.flare_outlined,
                      //         color: Colors.blueGrey),
                      //     title: Text(
                      //       "Welcome",
                      //     ),
                      //     trailing: Icon(
                      //       Icons.arrow_forward_ios_sharp,
                      //       color: Colors.black,
                      //     )),
                      // Divider(
                      //   thickness: 2,
                      // ),
                      ListTile(
                          onTap: () {
                            Navigator.pushNamed(
                                context, "/terms-and-conditions");
                          },
                          leading: Icon(Icons.perm_device_info_outlined,
                              color: Colors.blueGrey),
                          title: Text(
                            "Terms And Conditions",
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.black,
                          )),
                      Divider(
                        thickness: 2,
                      ),
                      ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, "/privacy-policy");
                          },
                          leading: Icon(Icons.privacy_tip_sharp,
                              color: Colors.blueGrey),
                          title: Text(
                            "Privacy Policy",
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
                      // ListTile(
                      //   onTap: () {
                      //     Navigator.pushReplacement(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => LoginPage()));
                      //   },
                      //   leading: Icon(Icons.logout, color: Colors.red),
                      //   title: Text(
                      //     "Sign Out",
                      //     style: TextStyle(
                      //         color: Colors.red, fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
