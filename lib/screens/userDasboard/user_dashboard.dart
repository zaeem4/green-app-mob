import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_app/screens/authentication/components/bg_image.dart';
import 'package:green_app/screens/userDasboard/homePage/mainScreen.dart';
import 'package:green_app/screens/userDasboard/homePage/post.dart';
import 'package:green_app/screens/userDasboard/nearsetNursery/nursery_list.dart';
import 'imageDetails/image_details.dart';

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  CameraController _control;
  void initState() {
    super.initState();
    _initApp();
  }

  void _initApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    final firstCam = cameras.first;

    _control = CameraController(
      firstCam,
      ResolutionPreset.high,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _control.dispose();
  }

  int index = 0;
  List<Widget> _widgets = [screen1(), screen2(), screen3()];
  tapped(int tappedIndex) {
    setState(() {
      index = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _widgets[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[100],
        currentIndex: index,
        onTap: tapped,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.search), title: Text('Nearest Nursery')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.camera_alt_rounded),
              title: Text('Scan Image'),
              backgroundColor: Colors.blueGrey[400]),
        ],
      ),
    );
  }
}

screen1() {
  return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
    BgImage(),
    HomePageScreen(),
  ]));
}

screen2() {
  return Scaffold(
      body: Stack(
          fit: StackFit.expand, children: <Widget>[BgImage(), NurseryList()]));
}

screen3() {
  return Scaffold(
    body: ImageDetails(),
  );
}
