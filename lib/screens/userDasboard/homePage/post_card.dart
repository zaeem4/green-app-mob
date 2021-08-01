// import 'package:flutter/material.dart';
// import 'package:green_app/constants.dart';
// import 'package:green_app/screens/userDasboard/homePage/name_nursery_quantity.dart';
// import 'package:green_app/screens/userDasboard/homePage/post_details.dart';

// class PostCard extends StatefulWidget {
//   final dynamic postDetails;

//   const PostCard({Key key, this.postDetails}) : super(key: key);

//   @override
//   _PostCardState createState() => _PostCardState();
// }

// class _PostCardState extends State<PostCard> {
//   bool _likes;
//   void initState() {
//     _likes = false;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => PostDetails(
//                   postData: widget.postDetails,
//                 )));
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: kPrimaryColor,
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         margin: const EdgeInsets.symmetric(vertical: 10),
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Stack(
//             // children: [
//             ClipRRect(
//                 // borderRadius: BorderRadius.circular(30.0),
//                 child: Image.network(server + widget.postDetails.image)),
//             // Positioned(
//             //     top: 15,
//             //     right: 15,
//             //     child: BorderIcon(
//             //         child: Icon(
//             //       Icons.favorite_border,
//             //       color: COLOR_BLACK,
//             //     )))
//             // ],
//             // ),
//             // addVerticalSpace(15),
//             // Container(
//             //   decoration: BoxDecoration(
//             //     color: kPrimaryColor,
//             //     borderRadius: BorderRadius.circular(20.0),
//             //   ),
//             NameNurseryQuantity(
//                 name: widget.postDetails.flowerType,
//                 quantity: widget.postDetails.quantity.toString(),
//                 nursery: widget.postDetails.user.name),
//             // IconButton(
//             //   onPressed: () {
//             //     setState(() {
//             //       _likes = !_likes;
//             //     });
//             //   },
//             //   icon: Icon(Icons.favorite_border,
//             //       color: _likes ? Colors.green : Colors.grey, size: 15.0),
//             // ),
//             // ),
//             // Row(
//             //   children: [
//             //     Text(
//             //       "${postDetails.flowerType}",
//             //       // style: themeData.textTheme.headline1,
//             //     ),
//             //     addVerticalSpace(15),
//             //     // Text(
//             //     //   "${postDetails["ammount"]}Rs",
//             //     //   //  style: themeData.textTheme.bodyText2,
//             //     // )
//             //     Text(
//             //       "No of Flowers avilable: ${postDetails.quantity}",
//             //       //style: themeData.textTheme.headline5,
//             //     )
//             //   ],
//             // ),
//             // Text(
//             //   "${postDetails.flowerType}",
//             //   // style: themeData.textTheme.headline1,
//             // ),
//             // addVerticalSpace(15),
//             // Text(
//             //   "No of Flowers avilable: ${postDetails.quantity}",
//             //   //style: themeData.textTheme.headline5,
//             // ),
//             // addVerticalSpace(10),
//             // Text(
//             //   "Nursery Name ${postDetails.user.name}",
//             //   //style: themeData.textTheme.headline5,
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget addVerticalSpace(double height) {
//   return SizedBox(height: height);
// }

// Widget addHorizontalSpace(double width) {
//   return SizedBox(width: width);
// }
import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class PostCard extends StatefulWidget {
  final dynamic postDetails;

  const PostCard({Key key, this.postDetails}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _likes;
  void initState() {
    _likes = false;
    super.initState();
  }

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
                            widget.postDetails.user.name,
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
                                widget.postDetails.user.nurseryDetail.city,
                                style: TextStyle(
                                  fontSize: size.width * 0.038,
                                ),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                    ),
                    child: Text(
                      widget.postDetails.discription,
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
                          child:
                              Image.network(server + widget.postDetails.image),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            // Text(
                            //   'NAME: ',
                            //   style: TextStyle(
                            //     fontSize: size.width * 0.045,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                            Text(
                              widget.postDetails.flowerType.toUpperCase(),
                              style: TextStyle(
                                  fontSize: size.width * 0.045,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _likes = !_likes;
                                });
                              },
                              icon: Icon(Icons.favorite_border,
                                  color: _likes ? Colors.green : Colors.grey,
                                  size: 35),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.access_time,
                              size: 25,
                              color: Colors.grey,
                            )),
                        Text(
                          widget.postDetails.time,
                          style: TextStyle(
                            fontSize: size.width * 0.028,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            FlutterOpenWhatsapp.sendSingleMessage(
                                widget
                                    .postDetails.user.nurseryDetail.phoneNumber,
                                "Hello " +
                                    widget.postDetails.user.name +
                                    " i want to buy: " +
                                    widget.postDetails.flowerType +
                                    ", Posted: " +
                                    widget.postDetails.time);
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
                                'Order Now',
                                style: TextStyle(
                                    fontSize: size.width * 0.035,
                                    color: Colors.green[700]
                                    //fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
