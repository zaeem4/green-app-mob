import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';

class NurseryCard extends StatefulWidget {
  final dynamic nurseryDetails;
  NurseryCard({@required this.nurseryDetails});
  @override
  _NurseryCardState createState() => _NurseryCardState();
}

class _NurseryCardState extends State<NurseryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(40.0),
        ),
        padding: EdgeInsets.only(left: 20, right: 25, top: 15, bottom: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  // CircleAvatar(
                  //   backgroundImage: NetworkImage(""),
                  //   maxRadius: 30,
                  // ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.nurseryDetails.name.toUpperCase(),
                            style: TextStyle(
                                fontSize: 30, color: kBackgroundColor),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.nurseryDetails.nurseryDetail.city
                                .toUpperCase(),
                            style: TextStyle(
                                fontSize: 17,
                                color: kBackgroundColor,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.nurseryDetails.nurseryDetail.phoneNumber,
                            style: TextStyle(
                                fontSize: 16,
                                color: kBackgroundColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Text(
            //   "1122",
            //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            // ),
          ],
        ),
      ),
    );
  }
}
