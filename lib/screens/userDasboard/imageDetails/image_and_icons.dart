import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_app/constants.dart';

import 'icon_card.dart';

class ImageAndIcons extends StatefulWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
    @required this.file,
    @required this.flowerDetails,
  }) : super(key: key);

  final Size size;
  final File file;
  final flowerDetails;

  @override
  _ImageAndIconsState createState() => _ImageAndIconsState();
}

class _ImageAndIconsState extends State<ImageAndIcons> {
  String type;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * 0.6,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.3),
              child: Column(
                children: <Widget>[
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: IconButton(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  //     icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  //     onPressed: () {
                  //       Navigator.pop(context);
                  //     },
                  //   ),
                  // ),
                  // Spacer(),
                  IconCard(
                      icon: "assets/icons/sun.svg",
                      heading: "Exposure",
                      details: widget.flowerDetails.sunlight),
                  IconCard(
                      icon: "assets/icons/icon_2.svg",
                      heading: "Season",
                      details: widget.flowerDetails.plantationTime),
                  IconCard(
                      icon: "assets/icons/icon_3.svg",
                      heading: "Watering",
                      details: widget.flowerDetails.water),
                  IconCard(
                      icon: "assets/icons/icon_4.svg",
                      heading: "Soil",
                      details: widget.flowerDetails.soil),
                ],
              ),
            ),
          ),
          Container(
            height: widget.size.height * 0.7,
            width: widget.size.width * 0.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(63),
              bottomLeft: Radius.circular(63),
            )),
            child: Image.file(widget.file),
          ),
        ],
      ),
    );
  }
}
