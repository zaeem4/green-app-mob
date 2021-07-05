import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/services/api/nursery.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isDetails;
  NurseryDetails nursery;
  var nurseryDetails;
  @override
  void initState() {
    _isDetails = false;
    super.initState();
    nursery = new NurseryDetails();
    getNurseryDetails();
  }

  void getNurseryDetails() async {
    try {
      var allNurseryDetails = await nursery.getNurseryDetails();
      setState(() {
        nurseryDetails = allNurseryDetails.nursery;
        _isDetails = true;
      });
    } catch (e) {
      setState(() {
        _isDetails = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: _isDetails == true
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderWithSearchBox(size: size, name: nurseryDetails.name),
                SizedBox(height: kDefaultPadding),
                TitleWithMoreBtn(title: "All Flowers", press: () {}),
                RecomendsPlants(
                  postsData: nurseryDetails.post,
                ),
                SizedBox(height: kDefaultPadding),
              ],
            )
          : Container(
              margin: EdgeInsets.only(
                left: 200,
                top: 300,
              ),
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(kPrimaryColor),
              ),
            ),
    );
  }
}
