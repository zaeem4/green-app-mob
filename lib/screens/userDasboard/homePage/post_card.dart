import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
// import 'package:green_app/screens/userDasboard/homePage/border_icon.dart';
import 'package:green_app/screens/userDasboard/homePage/name_nursery_quantity.dart';
import 'package:green_app/screens/userDasboard/homePage/post_details.dart';

class PostCard extends StatelessWidget {
  final dynamic postDetails;

  const PostCard({Key key, this.postDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PostDetails(
                  postData: postDetails,
                )));
      },
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stack(
            // children: [
            ClipRRect(
                // borderRadius: BorderRadius.circular(30.0),
                child: Image.network(server + postDetails.image)),
            // Positioned(
            //     top: 15,
            //     right: 15,
            //     child: BorderIcon(
            //         child: Icon(
            //       Icons.favorite_border,
            //       color: COLOR_BLACK,
            //     )))
            // ],
            // ),
            // addVerticalSpace(15),
            // Container(
            //   decoration: BoxDecoration(
            //     color: kPrimaryColor,
            //     borderRadius: BorderRadius.circular(20.0),
            //   ),
            NameNurseryQuantity(
                name: postDetails.flowerType,
                quantity: postDetails.quantity.toString(),
                nursery: postDetails.user.name),
            // ),
            // Row(
            //   children: [
            //     Text(
            //       "${postDetails.flowerType}",
            //       // style: themeData.textTheme.headline1,
            //     ),
            //     addVerticalSpace(15),
            //     // Text(
            //     //   "${postDetails["ammount"]}Rs",
            //     //   //  style: themeData.textTheme.bodyText2,
            //     // )
            //     Text(
            //       "No of Flowers avilable: ${postDetails.quantity}",
            //       //style: themeData.textTheme.headline5,
            //     )
            //   ],
            // ),
            // Text(
            //   "${postDetails.flowerType}",
            //   // style: themeData.textTheme.headline1,
            // ),
            // addVerticalSpace(15),
            // Text(
            //   "No of Flowers avilable: ${postDetails.quantity}",
            //   //style: themeData.textTheme.headline5,
            // ),
            // addVerticalSpace(10),
            // Text(
            //   "Nursery Name ${postDetails.user.name}",
            //   //style: themeData.textTheme.headline5,
            // )
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
