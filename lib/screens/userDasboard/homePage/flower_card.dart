import 'package:flutter/material.dart';

class FlowerCard extends StatelessWidget {
  final dynamic postDetails;

  const FlowerCard({Key key, this.postDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                    fontWeight: FontWeight.bold, fontSize: size.width * 0.052),
              ),
              //SizedBox(height: 10),
              Text(
                'Recommended',
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
                  'Soil Type :  ',
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
                  'Sunlight :   ',
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(postDetails.sunlight,
                            style: TextStyle(
                              fontSize: size.width * 0.045,
                            ),
                            textAlign: TextAlign.justify),
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
                  'Season :     ',
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
                Text(postDetails.plantationTime,
                    style: TextStyle(
                      fontSize: size.width * 0.045,
                    ),
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Watering :  ',
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(postDetails.water,
                            style: TextStyle(
                              fontSize: size.width * 0.045,
                            ),
                            textAlign: TextAlign.justify),
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
    );
  }
}

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
