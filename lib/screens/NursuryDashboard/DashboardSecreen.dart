import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/NursuryDashboard/Settings/SettingSecreen.dart';
import 'package:green_app/screens/NursuryDashboard/Stock/StockSecreen.dart';
import 'package:green_app/screens/NursuryDashboard/Store/StoreScreen.dart';
import 'package:green_app/screens/authentication/choose_auth.dart';
import 'package:green_app/screens/authentication/components/bg_image.dart';

import 'AddPost/addPost.dart';
class DashboardSecreen extends StatefulWidget {
  const DashboardSecreen({Key key}) : super(key: key);

  @override
  _DashboardSecreenState createState() => _DashboardSecreenState();
}

class _DashboardSecreenState extends State<DashboardSecreen> {
  String value;

  Card makeDashboardsItem(String title, IconData icon) {
    return Card(
        elevation: 3.0,
        margin: new EdgeInsets.all(25.0),
        color: kPrimaryColor,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.greenAccent
    // color: Color.fromRGBO(220, 220, 220, 1.0)
    ),
          child:  Padding(
            padding: const EdgeInsets.only(bottom:0.0),
            child: GestureDetector(
              onTap: () {
                if (title == 'Sign Out') {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SelectAuthCategory()));
                }
                else if (title == 'Add Post') {
                  Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => AddPost()));
                }
                else if (title == 'Settings') {
                  Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => SellerSettings()));
                }
                else if (title == 'Stock') {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => StockScreen()));
                }
                else if (title == 'Store') {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => StoreScreen()));
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
                  new Center(
                    child: new Text(title,
                        style:
                        new TextStyle(fontSize: 18.0, color: Colors.black)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
    @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 1,
        title: Text("Dashboard",style: TextStyle(fontSize: 20),),
        actions: [
          IconButton(
            icon: Icon(
              Icons.send,
              //color: kPrimaryColor,
            ),
            onPressed: (){
              //Navigator.pushReplacement(
              //context, MaterialPageRoute(builder: (context) =>()));
            },
          ),
        ],
      ),
      body:  Stack(
        fit: StackFit.expand,
        children:[
            BgImage(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.elliptical(3, 5)),

                      color: Colors.white10,
                    ),
                    child:
                        ListTile(
                          onTap: (){
                            //go to profile edit
                          },
                          focusColor: kPrimaryColor,
                          title: Text("Company Name",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:   new NetworkImage(
                                "https://i.tribune.com.pk/media/images/nurseries1593552436-0/nurseries1593552436-0.jpg"

                            ),
                          ),
                    )
                ),
              ),
            ],
          ),

          Padding(

            padding: const EdgeInsets.only(top: 60.0),
            child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(3.0),
            children: <Widget>[
              makeDashboardsItem("Store", Icons.view_agenda),
              makeDashboardsItem("Add Post", Icons.add_photo_alternate_outlined),
              makeDashboardsItem("Stock", Icons.store_mall_directory_outlined),
              makeDashboardsItem("Settings", Icons.settings),
              makeDashboardsItem("Sign Out", Icons.logout,),


            ],
        ),
          ),
        ],
      ),
    );

  }
}