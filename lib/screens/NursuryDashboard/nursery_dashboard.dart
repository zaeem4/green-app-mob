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

   makeDashboardsItem(String title, String image) {
    return Container(
      height: 350,
    margin: EdgeInsets.all(25),
         child: 
         Column(
           children: [
             Container(
                                    width: 200,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        
                                        color: Colors.blueGrey[300],
                                        image: DecorationImage(
                                          fit: BoxFit.fitWidth,
                                          image: AssetImage(
                                            image
                                          ),
                                        )),
             
                                        
        // Container(
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(40),
        //       color: kPrimaryColor.withOpacity(.2)),
                  
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
                        // child:  Container(
                        //             width: 100,
                        //             height: 100,
                        //             decoration: BoxDecoration(
                                        
    
                        //                 image: DecorationImage(
                        //                   fit: BoxFit.fitHeight,
                        //                   image: AssetImage(
                        //                     image
                        //                   ),
                        //                 )),
                        //           ),
                        ),
                    //SizedBox(height: 20.0),
                    // Padding(padding: EdgeInsets.only(top:100),
                    //   child: Text(title,
                    //       style:
                    //           TextStyle(fontSize: 18.0, color: Colors.black)),
                    // )
                  ],
                ),
              ),
        ),
                 ],
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
         // BgImage(),
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

          Container(
              width: size.width,
               decoration: BoxDecoration(
                            color: Colors.blueGrey[300],
                            )

              
          ),
          Column(
            children: [
            
          Container(
              width: size.width,
              height: size.height*0.25,
               decoration: BoxDecoration(
                            color: Colors.blueGrey[600],
                            
                            ),
                            
                      child: 
                      Padding(
                        padding: const EdgeInsets.only(left:10,top: 0),
                        child: Row(
                          children: [
                            Container(
                              width: size.width*0.45,
                          child:Text("Let's Manage Your Dashboard Here",style: TextStyle(
                           fontFamily: 'Georgia',
                           fontSize: 30 ,
                           fontWeight: FontWeight.bold,
                           color: Colors.white
                          ),),
                            ),
                          Spacer(),
                           Container(
                                width: size.width * 0.5,
                                height: size.height * 0.25,
                                decoration: BoxDecoration(
                                    

                                    image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage(
                                        'assets/images/img_main.png'
                                      ),
                                    )),
                              ),
                        ],),
                      ),
                            ),
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
             child: Column(
               children: [
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                       children: [
                         GestureDetector(
                          onTap:() { Navigator.pushNamed(context, "/nursery-settings");},
                   
                           child: Container(
                                  width: 165,
                                 height: 160,     
                                  decoration: BoxDecoration(
                                  borderRadius: (BorderRadius.circular(25)),
                                  color: Colors.blueGrey[300],
                                  image: DecorationImage(
                                 fit: BoxFit.cover,
                                image: AssetImage(
                                   "assets/images/store.png"
                                    ),
                              )),
                           ),
                         ),
                         SizedBox(height: 10,),
                         Text("Store",
                              style:
                                   TextStyle(fontSize: 22.0,
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold))
                       ],
                     ),
                   ),
                    Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                       children: [
                         GestureDetector(
                           onTap: 
                           (){ Navigator.pushNamed(context, "/add-post");
                           },
                           child: Container(
                                  width: 165,
                                 height: 160,     
                                  decoration: BoxDecoration(
                                  borderRadius: (BorderRadius.circular(25)),
                                  color: Colors.blueGrey[300],
                                  image: DecorationImage(
                                 fit: BoxFit.cover,
                                image: AssetImage(
                                   "assets/images/1.png"
                                    ),
                              )),
                           ),
                         ),
                         SizedBox(height: 10,),
                         Text("Add Post",
                              style:
                                   TextStyle(fontSize: 22.0,
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold))
                       ],
                     ),
                   )
                   ]
                 ),
                  Row(children: [
                   Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                       children: [
                         GestureDetector(
                           onTap: (){ Navigator.pushNamed(context, "/nursery-store");},
                           child: Container(
                                  width: 165,
                                 height: 160,     
                                  decoration: BoxDecoration(
                                  borderRadius: (BorderRadius.circular(25)),
                                  color: Colors.blueGrey[300],
                                  image: DecorationImage(
                                 fit: BoxFit.cover,
                                image: AssetImage(
                                   "assets/images/PE.png"
                                    ),
                              )),
                           ),
                         ),
                         SizedBox(height: 10,),
                         Text("Profile Edit",
                              style:
                                   TextStyle(fontSize: 22.0,
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold))
                       ],
                     ),
                   ),
                    Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                       children: [
                         GestureDetector(
                           onTap: (){_logout();},
                           child: Container(
                                  width: 165,
                                 height: 160,     
                                  decoration: BoxDecoration(
                                  borderRadius: (BorderRadius.circular(25)),
                                  color: Colors.blueGrey[300],
                                  image: DecorationImage(
                                 fit: BoxFit.cover,
                                image: AssetImage(
                                   "assets/images/4.png"
                                    ),
                              )),
                           ),
                         ),
                         SizedBox(height: 10,),
                         Text("Sign Out",
                              style:
                                   TextStyle(fontSize: 22.0,
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold))
                       ],
                     ),
                   )
                   ]
                 ),
               ],
             )
             )
        ]
      ),
    );
  }

         // child: GridView.count(
            //   crossAxisCount: 2,
            //   padding: EdgeInsets.all(3.0),
            //   children: <Widget>[
            //     Column(
            //       children:[
            //     makeDashboardsItem("Store","assets/images/1.png"),
            //     Text('Store',
            //           style:
            //          TextStyle(fontSize: 18.0, color: Colors.black)),
            //       ]),
            //     makeDashboardsItem(
            //         "Add Post", "assets/images/store.png"),
            //     // makeDashboardsItem(
            //     //     "Stock", Icons.store_mall_directory_outlined),
            //     makeDashboardsItem("","assets/images/PE.png"),
            //     makeDashboardsItem(
            //       "Sign Out",
            //       "assets/images/4.png",
            //     ),
            //   ],

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
