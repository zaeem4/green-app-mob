import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/NursuryDashboard/DashboardSecreen.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'dart:async';
class AddPost extends StatefulWidget {
  @override
  _AddPostState createState() => _AddPostState();
}
class _AddPostState extends State<AddPost> {

  void initState() {
    super.initState();
  }
  Future<void> pickImages() async { List<Asset> resultList = List<Asset>();

  try {
    resultList = await MultiImagePicker.pickImages(
      maxImages: 1,
      enableCamera: true,
      selectedAssets: images,
      materialOptions: MaterialOptions(
        actionBarTitle: "FlutterCorner.com",
      ),
    );
  } on Exception catch (e) {
    print(e);
  }

  setState(() {
    images = resultList;
  });
  }  List<Asset> images = List<Asset>();


  @override


  @override
  Widget build(BuildContext context) {
    TextEditingController _description=TextEditingController();
    TextEditingController _name=TextEditingController();
    TextEditingController _noOfItems=TextEditingController();

    Size size=MediaQuery.of(context).size;

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back_ios_rounded,),
            onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardSecreen()));
            },),
          title: const Text('Create Post',),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 18,right: 10),
              child: GestureDetector(
                child: Text('Post',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                ),),
              )
            ),
          ],
          backgroundColor: kPrimaryColor,
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 200,top: 20),
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
              padding: const EdgeInsets.only(left: 20.0,right: 180,top: 20),
              child: TextField(
                controller:_noOfItems,
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
                    padding: const EdgeInsets.only(left: 30.0,top: 30),
                    child: AssetThumb(
                      asset: asset,
                      width: 300,
                      height: 300,
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
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
}