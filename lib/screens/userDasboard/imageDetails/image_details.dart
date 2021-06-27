import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/services/api/flower.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'icon_card.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class ImageDetails extends StatefulWidget {
  @override
  _ImageDetailsState createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  PickedFile galleryFile;
  File imagePath;
  String imageType;
  bool _isFile;
  String name;
  Flower flower;
  var details;

  @override
  void initState() {
    _isFile = false;
    super.initState();
    getPictureFromCamera();
    flower = new Flower();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _isFile == true
              ? ImageAndIcons(
                  size: size,
                  file: imagePath,
                  flowerDetails: details,
                )
              : CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(kPrimaryColor),
                ),
          _isFile == true
              ? TitleAndPrice(
                  title: imageType,
                  // address: "Flower name",
                )
              : Row(),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "Search Nurseries",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "More Details",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void getPictureFromCamera() async {
    galleryFile = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      imagePath = File(galleryFile.path);
    });
    this.sendImage(imagePath);
  }

  void sendImage(File imagePath) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse(modelPath));
      request.files
          .add(await http.MultipartFile.fromPath('image', imagePath.path));
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);
      var type = json.decode(response.body);

      if (response.statusCode == 200) {
        try {
          var flowerDetail = await flower.getFlowerDetails(type['type']);
          setState(() {
            _isFile = true;
            imageType = type['type'];
            details = flowerDetail.flowerDetails;
          });
        } catch (e) {
          showAlertDialog(context, "Error", e.toString());
          Navigator.pushNamed(context, "/user-home");
        }
      } else {
        showAlertDialog(context, "Connection Failed", "Try again");
        Navigator.pushNamed(context, "/user-home");
      }
    } catch (e) {
      showAlertDialog(context, "Connection Failed", e.toString());
      Navigator.pushNamed(context, "/user-home");
    }
  }
}
