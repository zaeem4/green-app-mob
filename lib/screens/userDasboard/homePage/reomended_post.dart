import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/homePage/chose_option.dart';
import 'package:green_app/screens/userDasboard/homePage/flower_card.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:green_app/services/api/flower.dart';

class RecomendedPost extends StatefulWidget {
  const RecomendedPost({Key key}) : super(key: key);

  @override
  RecomendedPost_State createState() => RecomendedPost_State();
}

class RecomendedPost_State extends State<RecomendedPost> {
  bool _isPost;
  Flower flowers;
  var flowerDetails = [];
  Position currentPosition;
  @override
  void initState() {
    _isPost = false;
    super.initState();
    flowers = new Flower();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentPosition = await locateUser();
    getRecomendedFLowers(currentPosition.longitude, currentPosition.latitude);
  }

  void getRecomendedFLowers(lon, lat) async {
    try {
      var allFlowers = await flowers.getRecomendedFlowers(lon, lat);
      setState(() {
        _isPost = true;
        flowerDetails = allFlowers.flowerDetails;
      });
    } catch (e) {
      setState(() {
        _isPost = true;
      });
      showAlertDialog(context, "Alert", e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final sidePadding = EdgeInsets.symmetric(horizontal: 15);
    return SafeArea(
      child: Scaffold(
          body: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        child: _isPost == true
            ? Stack(
                children: [
                  flowerDetails.length > 0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Padding(
                            //     padding: sidePadding,
                            //     child: Divider(
                            //       height: 25,
                            //       color: kPrimaryColor,
                            //     )),
                            // SingleChildScrollView(
                            //   scrollDirection: Axis.horizontal,
                            //   physics: BouncingScrollPhysics(),
                            //   child: Row(
                            //     children: FLOWERTYPES
                            //         .map((filter) => ChoiceOption(text: filter))
                            //         .toList(),
                            //   ),
                            // ),
                            Padding(
                                padding: sidePadding,
                                child: Divider(
                                  height: 25,
                                  color: kPrimaryColor,
                                )),
                            Expanded(
                              child: Padding(
                                padding: sidePadding,
                                child: new ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    itemCount: flowerDetails.length,
                                    itemBuilder: (context, index) {
                                      return FlowerCard(
                                        postDetails: flowerDetails[index],
                                      );
                                    }),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          padding: EdgeInsets.only(
                              left: 40, right: 25, top: 15, bottom: 20),
                          child: Text(
                            "No recomended flowers based on your location and temperature",
                            style: TextStyle(
                              fontSize: 17,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                ],
              )
            : CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(kPrimaryColor),
              ),
      )),
    );
  }
}
