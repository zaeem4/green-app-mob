import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:green_app/screens/userDasboard/nearsetNursery/nursery_card.dart';
import 'package:green_app/services/api/nursery.dart';
import 'package:geolocator/geolocator.dart';

class NurseryList extends StatefulWidget {
  @override
  _NurseryListState createState() => _NurseryListState();
}

class _NurseryListState extends State<NurseryList> {
  Position currentPosition;
  String currentAddress;
  bool _isNursery;
  NurseryDetails nurseries;
  var nurseryDetails = [];
  String message = "";

  @override
  void initState() {
    _isNursery = false;
    super.initState();
    nurseries = new NurseryDetails();
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
      getAllNurseries(currentAddress.toLowerCase());
    });
    // print('center $place');
  }

  getAllNurseries(String city) async {
    try {
      var allNurseries = await nurseries.getAllNurseries(city);
      if (allNurseries.nurseries.length == 0) {
        setState(() {
          message = "No Nearest Nursery based on your location";
          _isNursery = true;
        });
      } else {
        setState(() {
          nurseryDetails = allNurseries.nurseries;
          _isNursery = true;
        });
      }
    } catch (e) {
      setState(() {
        _isNursery = true;
      });
      showAlertDialog(context, "Error ", e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
      
      ),
      backgroundColor: Colors.transparent.withOpacity(0.2),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            // color: Colors.transparent,
            alignment: Alignment.center,
            width: size.width,
            // height: size.height,
            child: _isNursery == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.only(left: 40, right: 25, top: 15),
                          child: Text(
                            "Your current location is " + currentAddress,
                            style: TextStyle(
                                fontSize: 17,
                                color: kBackgroundColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SafeArea(
                          child: ListView.builder(
                            itemCount: nurseryDetails.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.only(top: 16),
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return NurseryCard(
                                nurseryDetails: nurseryDetails[index],
                              );
                            },
                          ),
                        ),
                        // Text(
                        //   message,
                        //   style: TextStyle(
                        //       decoration: BoxDecoration(),
                        //       fontSize: 12,
                        //       fontWeight: FontWeight.normal),
                        // ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 40, right: 25, top: 15, bottom: 20),
                          child: Text(
                            message.toUpperCase(),
                            style: TextStyle(
                              fontSize: 17,
                              color: kBackgroundColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ])
                : CircularProgressIndicator(
                    valueColor:
                        new AlwaysStoppedAnimation<Color>(kPrimaryColor),
                  ),
          )),
    );
  }
}
