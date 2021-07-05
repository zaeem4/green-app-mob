import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/homePage/recomended_flower_details.dart';

class FlowerCard extends StatelessWidget {
  final dynamic postDetails;

  const FlowerCard({Key key, this.postDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          children: [
            ClipRRect(child: Image.network(postDetails.image)),
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
