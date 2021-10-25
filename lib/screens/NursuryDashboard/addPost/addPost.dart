import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:green_app/storage.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter_absolute_path/flutter_absolute_path.dart';

class AddPost extends StatefulWidget {
  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  TextEditingController _name = TextEditingController();
  TextEditingController _description = TextEditingController();
  TextEditingController _noOfItems = TextEditingController();
  List<Asset> images = <Asset>[];
  bool _isSave = false;

  void initState() {
    super.initState();
  }

  Future<void> pickImages() async {
    List<Asset> resultList = <Asset>[];
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 1,
        enableCamera: true,
        selectedAssets: images,
        materialOptions: MaterialOptions(
          actionBarTitle: "Select Only 1 Image",
        ),
      );
    } on Exception catch (e) {
      showAlertDialog(context, "Error", e.toString());
    }
    setState(() {
      images = resultList;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Create Post',
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 18, right: 10),
              child: _isSave == false
                  ? GestureDetector(
                      onTap: () {
                        _saveData();
                      },
                      child: Text(
                        'Post',
                        style: TextStyle(
                            fontSize: 18,
                            color: kBackgroundColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(kPrimaryColor),
                    ),
            ),
          ],
          backgroundColor: kPrimaryColor,
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 200, top: 20),
              child: TextField(
                controller: _name,
                decoration: new InputDecoration(
                  // icon: Icon(Icons.search),
                  prefixIcon: Icon(Icons.description),
                  labelText: "Flower Type",
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 180, top: 20),
              child: TextField(
                controller: _noOfItems,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  // icon: Icon(Icons.search),
                  prefixIcon: Icon(Icons.add_circle_outline_sharp),
                  labelText: "No Of Items",
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _description,
                decoration: new InputDecoration(
                  // icon: Icon(Icons.search),
                  prefixIcon: Icon(Icons.description),
                  labelText: "Description",
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(images.length, (index) {
                  Asset asset = images[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 30),
                    child: AssetThumb(
                      asset: asset,
                      width: 1000,
                      height: 1000,
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: RaisedButton(
                child: Text("Pick images"),
                onPressed: pickImages,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveData() async {
    setState(() {
      _isSave = true;
    });

    try {
      var path =
          await FlutterAbsolutePath.getAbsolutePath(images[0].identifier);
      var imagePath = File(path);
      var token = Storage.prefs.getString('token');
      var url = Uri.parse(server + "/api/create-post");
      var request = http.MultipartRequest('POST', url);
      request.files
          .add(await http.MultipartFile.fromPath('file', imagePath.path));
      request.headers["Authorization"] = 'Bearer $token';
      request.fields["name"] = _name.text;
      request.fields["description"] = _description.text;
      request.fields["quantity"] = _noOfItems.text;
      request.fields["city"] = "";
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);
      showAlertDialog(context, "Alert", json.decode(response.body).toString());
      setState(() {
        _isSave = false;
      });
    } catch (e) {
      showAlertDialog(context, "Error", e.toString());
      setState(() {
        _isSave = false;
      });
    }
  }
}
