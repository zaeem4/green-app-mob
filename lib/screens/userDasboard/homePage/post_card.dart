import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/homePage/name_nursery_quantity.dart';
import 'package:green_app/screens/userDasboard/homePage/post_details.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class PostCard extends StatelessWidget {
  final dynamic postDetails;

  const PostCard({Key key, this.postDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {},
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    child: Row(children: [
                      Container(
                          width: size.width * 0.15,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/icons/icon.png',
                                ),
                              ))),

                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            postDetails.user.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.052),
                          ),
                          //SizedBox(height: 10),
                          Text(
                            'Nursury',
                            style: TextStyle(
                                fontSize: size.width * 0.048,
                                color: Colors.black38),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 10),
                        child: Container(
                          height: 30,
                          width: 128,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.location_city,
                                    size: 18,
                                    color: Colors.grey,
                                  )),

                              Text(
                                postDetails.user.nurseryDetail.city,
                                style: TextStyle(
                                  fontSize: size.width * 0.038,
                                ),
                              ),
                              SizedBox(width: 5),
                              // GestureDetector(
                              //   onTap: () {},
                              //   child: Text(
                              //     'Buy',
                              //     style: TextStyle(
                              //       color: Colors.blue[700],
                              //       fontSize: size.width * 0.040,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      //  Spacer(),

                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, bottom: 10),
                      //   child: Container(
                      //     height: 30,
                      //     width: 60,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(0),
                      //       color: Colors.blueGrey[300],
                      //     ),
                      //     child:
                      //     Padding(
                      //       padding: const EdgeInsets.only(top:6.0,left: 5),
                      //       child: Text(
                      //             postDetails.time,
                      //             style: TextStyle(
                      //               fontSize: size.width * 0.028,
                      //               //fontWeight: FontWeight.bold,
                      //               color: Colors.
                      //             ),
                      //           ),
                      //     ),
                      //     ),
                      // ),

                      //     Column(
                      //       children: [
                      //         IconButton(
                      //             onPressed: () {},
                      //             icon: Icon(
                      //               Icons.access_time,
                      //               size: 25,
                      //               color: Colors.grey,
                      //             )),
                      //  Text(
                      //       postDetails.time,
                      //       style: TextStyle(
                      //         fontSize: size.width * 0.025,
                      //       ),
                      //     ),
                      //       ],
                      //     ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                    ),
                    child: Text(
                      '"' + postDetails.discription + '"',
                      style: TextStyle(fontSize: size.width * 0.055),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      children: [
                        Container(
                          width: size.width * 0.75,
                          height: size.height * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 0,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.network(server + postDetails.image),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'NAME: ',
                              style: TextStyle(
                                fontSize: size.width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              postDetails.flowerType.toUpperCase(),
                              style: TextStyle(
                                  fontSize: size.width * 0.045,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    //child:
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        // IconButton(
                        //   onPressed: (){},
                        //   icon:Icon(Icons.mode_comment_outlined,
                        //     color:Colors.black38,
                        //     size: 25,),

                        // ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.access_time,
                              size: 25,
                              color: Colors.grey,
                            )),
                        Text(
                          postDetails.time,
                          style: TextStyle(
                            fontSize: size.width * 0.028,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            FlutterOpenWhatsapp.sendSingleMessage(
                                postDetails.user.nurseryDetail.phoneNumber,
                                "Hello " +
                                    postDetails.user.name +
                                    " i want to buy: " +
                                    postDetails.flowerType +
                                    ", Posted: " +
                                    postDetails.time);
                          },
                          child: Row(
                            children: [
                              Container(
                                  width: size.width * 0.1,
                                  height: size.height * 0.045,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/icons/whats_app.jpg',
                                        ),
                                      ))),
                              Text(
                                'WhatsApp ',
                                style: TextStyle(
                                    fontSize: size.width * 0.035,
                                    color: Colors.green[700]
                                    //fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        // IconButton(
                        //   onPressed: (){},
                        //   icon:Icon(Icons.repeat,
                        //     color:Colors.black38,
                        //     size: 25,),

                        // ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                ],
              ),
            ),
          ),
        ));

    // return GestureDetector(
    //   onTap: () {
    //     Navigator.of(context).push(MaterialPageRoute(
    //         builder: (context) => PostDetails(
    //               postData: postDetails,
    //             )));
    //   },
    //   child: Container(
    //     decoration: BoxDecoration(
    //       color: kPrimaryColor,
    //       borderRadius: BorderRadius.circular(30.0),
    //     ),
    //     margin: const EdgeInsets.symmetric(vertical: 10),
    //     child: Column(
    //       // crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         // Stack(
    //         // children: [
    //         ClipRRect(
    //             // borderRadius: BorderRadius.circular(30.0),
    //             child: Image.network(server + postDetails.image)),

    //       //   NameNurseryQuantity(
    //         //      name: postDetails.flowerType,
    //         //     quantity: postDetails.quantity.toString(),
    //         //     nursery: postDetails.user.name),
    //       ],
    //     ),
    //   ),
    // );
  }
}

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
