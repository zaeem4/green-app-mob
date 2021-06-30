import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_app/screens/NursuryDashboard/DashboardSecreen.dart';
import 'package:green_app/screens/authentication/login_page.dart';
import 'package:green_app/services/Models/login.dart';

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
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 1,
            leading: IconButton(
              onPressed: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) =>
                    DashboardSecreen()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: Text("Account Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
        ),
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                margin:  const EdgeInsets.all(8.0),
                color: Colors.blueGrey,
                child: ListTile(
                    onTap: (){
                      //go to profile edit
                      Navigator.pushReplacement(
                         context, MaterialPageRoute(builder: (context) => SellerProfile()));
                    },
                    title: Text("Company Name",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                    ),
                    leading: CircleAvatar(
                      backgroundImage:   new NetworkImage(
                          "https://i.tribune.com.pk/media/images/nurseries1593552436-0/nurseries1593552436-0.jpg"

                      ),
                    ),
                    trailing:Icon(Icons.edit,color: Colors.white,)
                ),
              ),
              const SizedBox(height:10.0),

              Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                          onTap: (){
                            //go to profile edit
                          },
                          leading: Icon(Icons.flare_outlined,color: Colors.blueGrey),
                          title: Text("Welcome",
                          ),
                          trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)
                      ),

                      Divider(
                        thickness: 2,
                      ),
                      ListTile(
                          onTap: (){
                          //  Navigator.pushReplacement(
                            //    context, MaterialPageRoute(builder: (context) => TermsAndConditions()));
                          },
                          leading: Icon(Icons.perm_device_info_outlined,color: Colors.blueGrey),
                          title: Text("Terms And Conditions",
                          ),
                          trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)
                      ),

                      Divider(
                        thickness: 2,
                      ),
                      ListTile(
                          onTap: (){
                            //go to profile edit
                          },
                          leading: Icon(Icons.info,color: Colors.blueGrey),
                          title: Text("About",
                          ),
                          trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)
                      ),


                      Divider(
                        height: 15,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ListTile(
                        onTap: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        leading: Icon(Icons.logout,color: Colors.red),
                        title: Text("Sign Out",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                        ),),


                    ],
                  )
              )




            ],
          ),
        )

    );
  }
}