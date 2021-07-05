import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/homePage/post_card.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:geolocator/geolocator.dart';
import 'package:green_app/services/api/post.dart';

class FlowerNurseryList extends StatefulWidget {
  final dynamic flowerType;

  const FlowerNurseryList({Key key, @required this.flowerType})
      : super(key: key);
  @override
  _FlowerNurseryListState createState() => _FlowerNurseryListState();
}

class _FlowerNurseryListState extends State<FlowerNurseryList> {
  Position currentPosition;
  String currentAddress;
  bool _isPost;
  PostsDetails posts;
  var postDetails = [];
  String message = "";

  @override
  void initState() {
    _isPost = false;
    super.initState();
    posts = new PostsDetails();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentPosition = await locateUser();
    List<Placemark> placemarks = await placemarkFromCoordinates(
        currentPosition.latitude, currentPosition.longitude);
    Placemark place = placemarks[0];
    setState(() {
      currentAddress = place.locality;
    });
    getAllPosts(currentAddress.toLowerCase());
  }

  void getAllPosts(String city) async {
    try {
      var allPosts = await posts.getPostsByLocation(widget.flowerType, city);
      setState(() {
        _isPost = true;
        postDetails = allPosts.allPosts;
      });
    } catch (e) {
      print("z2");
      if (e.toString() == "Exception: no") {
        setState(() {
          message = "No Post to show based on your location and flower type";
          _isPost = true;
        });
      } else {
        setState(() {
          _isPost = true;
        });
        showAlertDialog(context, "Error ", e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final sidePadding = EdgeInsets.symmetric(horizontal: 15);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: new IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pushNamed(context, "/user-menu");
              },
            )),
        title: Text('Green Pakistan'),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: new IconButton(
              iconSize: 30,
              icon: Icon(Icons.arrow_back_sharp),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/user-home");
              },
            ),
          ),
        ],
      ),
      body: Scaffold(
          body: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        child: _isPost == true
            ? Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 40, right: 25, top: 15),
                        child: Text(
                          "Your current location is: " + currentAddress,
                          style: TextStyle(
                              fontSize: 17,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 40, right: 25, top: 15),
                        child: Text(
                          "Flower Type is: " + widget.flowerType,
                          style: TextStyle(
                              fontSize: 17,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                          padding: sidePadding,
                          child: Divider(
                            height: 25,
                            color: kPrimaryColor,
                          )),
                      postDetails.length > 0
                          ? Expanded(
                              child: Padding(
                                padding: sidePadding,
                                child: new ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    itemCount: postDetails.length,
                                    itemBuilder: (context, index) {
                                      return PostCard(
                                        postDetails: postDetails[index],
                                      );
                                    }),
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.only(
                                  left: 40, right: 25, top: 15, bottom: 20),
                              child: Text(
                                message.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 17,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                    ],
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
