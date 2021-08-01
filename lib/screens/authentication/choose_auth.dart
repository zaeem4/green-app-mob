import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/NursuryDashboard/nursery_dashboard.dart';
import 'package:green_app/screens/authentication/registration_page.dart';
import 'package:green_app/screens/userDasboard/user_dashboard.dart';

import 'components/bg_image.dart';

class SelectAuthCategory extends StatefulWidget {
  @override
  _SelectAuthCategoryState createState() => _SelectAuthCategoryState();
}

class _SelectAuthCategoryState extends State<SelectAuthCategory> {
  @override
  Widget build(BuildContext context) {
    var _formKey;
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      BgImage(),
      Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                Form(
                    key: _formKey,
                    child: Column(children: <Widget>[
                      Text(
                        "Want to register as ",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 40,
                            fontFamily: "Montserat",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.blueGrey[300], // button color
                          child: InkWell(
                            splashColor: Colors.green[400], // inkwell color
                            child: SizedBox(
                                width: 130,
                                height: 130,
                                child: Icon(
                                  Icons.store_mall_directory_outlined,
                                  color: Colors.white,
                                  size: 80,
                                )),
                            onTap: () {
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => RegisterPage(
                              //               type: "nursery",
                              //             )));
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NurseryDashboard()));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "NURSURY",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 30,
                            fontFamily: "Montserat",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.blueGrey[300], // button color
                          child: InkWell(
                            splashColor: Colors.green[400], // inkwell color
                            child: SizedBox(
                                width: 130,
                                height: 130,
                                child: Icon(
                                  Icons.transfer_within_a_station_rounded,
                                  color: Colors.white,
                                  size: 80,
                                )),
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage(
                                            type: "user",
                                          )));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "USER",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 30,
                            fontFamily: "Montserat",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]))
              ]))))
    ]));
  }
}
