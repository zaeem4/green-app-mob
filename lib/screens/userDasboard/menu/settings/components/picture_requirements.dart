import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';

class PictureRequirements extends StatefulWidget {
  @override
  _PictureRequirementsState createState() => _PictureRequirementsState();
}

class _PictureRequirementsState extends State<PictureRequirements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          "Instructions for identification",
          style: TextStyle(
            color: Colors.green,
            fontSize: 23,
            fontFamily: 'Georgia',
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "How to use Green Pakistan:",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "To identify a flower, simply take a picture of the flower or select a flower picture from your Photos and Green Pakistan will identify it instantly!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Tips on taking pictures:",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "A clear shot of plants with proper angle and distance will help Green Pakistan identify flowers more accurately.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "1.Focus the flower at the center of the frame, avoid dark and blurry images.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/picturerequirements/1.jpg',
                height: 270.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "2. If the flower is too big for the frame,just make sure to include the leaves and flowers.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/picturerequirements/2.jpg',
                height: 230.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "3. Avoid getting too close, just make sure the flowers are clear and complete.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/picturerequirements/3.jpg',
                height: 130.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "4. Focus on the flower if your plant has flowers.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/picturerequirements/5.jpg',
                height: 170.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "5. Only include one species at a time.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/picturerequirements/4.jpg',
                height: 170.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "With your location information, 'Green Pakistan' can give you more accurate identification result.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "Remember:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Pay attention to the surrounding environment and stay safe when taking pictures.                                                      ->Don't eat any wild plants.                      ->Don't touch any unknown wild plants,because some may be toxic or may cause allergies.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
