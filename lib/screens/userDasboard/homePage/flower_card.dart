import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/homePage/recomended_flower_details.dart';

class FlowerCard extends StatelessWidget {
  final dynamic postDetails;

  const FlowerCard({Key key, this.postDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return GestureDetector(
    //     onTap: () {},
    //     child: ListTile(
    //       title: Padding(
    //         padding: const EdgeInsets.only(top: 5.0),
    //         child: Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                 width: size.width,
    //                 child: Row(children: [
    //                   Container(
    //                       width: size.width * 0.15,
    //                       height: size.height * 0.07,
    //                       decoration: BoxDecoration(
    //                           border: Border.all(
    //                               width: 1,
    //                               color: Theme.of(context)
    //                                   .scaffoldBackgroundColor),
    //                           image: DecorationImage(
    //                             fit: BoxFit.cover,
    //                             image: AssetImage(
    //                               'assets/icons/icon.png',
    //                             ),
    //                           ))),
    //                   SizedBox(width: 5),
    //                   Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     mainAxisAlignment: MainAxisAlignment.start,
    //                     children: [
    //                       Text(
    //                             postDetails.flowerType.toUpperCase(),
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: size.width * 0.052),
    //                       ),
    //                       //SizedBox(height: 10),
    //                       Text(
    //                         'Recomended',
    //                         style: TextStyle(
    //                             fontSize: size.width * 0.048,
    //                             color: Colors.black38),
    //                       ),
    //                     ],
    //                   ),
    //                   Spacer(),
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 5, bottom: 10),
    //                     child: Container(
    //                       height: 30,
    //                       width: 128,
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(30),
    //                         color: Colors.grey[300],
    //                       ),
    //                       child: Row(
    //                         crossAxisAlignment: CrossAxisAlignment.center,
    //                         children: [
    //                           IconButton(
    //                               onPressed: () {},
    //                               icon: Icon(
    //                                 Icons.location_city,
    //                                 size: 18,
    //                                 color: Colors.grey,
    //                               )),
    //                           Text(
    //                             postDetails.user.nurseryDetail.city,
    //                             style: TextStyle(
    //                               fontSize: size.width * 0.038,
    //                             ),
    //                           ),
    //                           SizedBox(width: 5),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ]),
    //               ),
    //               // Padding(
    //               //   padding: const EdgeInsets.only(
    //               //     top: 30.0,
    //               //   ),
    //               //   child: Text(
    //               //     '"' + postDetails.discription + '"',
    //               //     style: TextStyle(fontSize: size.width * 0.055),
    //               //   ),
    //               // ),
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 20, left: 20),
    //                 child: Column(
    //                   children: [
    //                     Container(
    //                       width: size.width * 0.85,
    //                       height: size.height * 0.4,
    //                       decoration: BoxDecoration(
    //                         border: Border.all(
    //                             width: 0,
    //                             color:
    //                                 Theme.of(context).scaffoldBackgroundColor),
    //                         borderRadius: BorderRadius.circular(10),
    //                       ),
    //                       child: Image.network(postDetails.image),
    //                     ),
    //                     SizedBox(
    //                       width: 20,
    //                     ),
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Text(
    //                           'NAME: ',
    //                           style: TextStyle(
    //                             fontSize: size.width * 0.045,
    //                             fontWeight: FontWeight.bold,
    //                           ),
    //                           textAlign: TextAlign.justify,
    //                         ),
    //                         Text(
    //                           postDetails.flowerType.toUpperCase(),
    //                           style: TextStyle(
    //                               fontSize: size.width * 0.045,
    //                               fontWeight: FontWeight.bold),
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Divider(thickness: 1),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ));

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RecomendedFlowerDetails(
                  postData: postDetails,
                )));
      },
      child: Container(
        // decoration: BoxDecoration(
        //   color: kPrimaryColor,
        //   borderRadius: BorderRadius.circular(30.0),
        // ),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  postDetails.flowerType.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.052),
                ),
                //SizedBox(height: 10),
                Text(
                  'Recomended',
                  style: TextStyle(
                      fontSize: size.width * 0.045, color: Colors.black38),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Container(
                width: size.width * 0.75,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0,
                        color: Theme.of(context).scaffoldBackgroundColor),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        postDetails.image,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SoilType  :  ',
                    style: TextStyle(
                        fontSize: size.width * 0.045,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            postDetails.soil,
                            style: TextStyle(
                              fontSize: size.width * 0.045,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SunLight : ',
                    style: TextStyle(
                        fontSize: size.width * 0.045,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            postDetails.sunlight,
                            style: TextStyle(
                              fontSize: size.width * 0.045,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Season    : ',
                    style: TextStyle(
                        fontSize: size.width * 0.045,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    postDetails.plantationTime,
                    style: TextStyle(
                      fontSize: size.width * 0.045,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Watering : ',
                    style: TextStyle(
                        fontSize: size.width * 0.045,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            postDetails.water,
                            style: TextStyle(
                              fontSize: size.width * 0.045,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
