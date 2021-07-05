import 'dart:convert';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/authentication/components/bg_image.dart';
import 'package:green_app/screens/authentication/components/custome_text_field.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:http/http.dart' as http;
import 'package:green_app/storage.dart';

class NurseryProfile extends StatefulWidget {
  @override
  _NurseryProfileState createState() => _NurseryProfileState();
}

bool showPassword = true;
String username;
bool isPasswordTextField = true;

class _NurseryProfileState extends State<NurseryProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String name;
  String password;
  String code = "+92";
  TextEditingController phone = TextEditingController();
  bool _saving = false;
  Position currentPosition;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          elevation: 1,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: kBackgroundColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Edit Profile",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
          // actions: [
          //   IconButton(
          //     icon: Icon(
          //       Icons.settings,
          //       color: Colors.blueGrey[200],
          //     ),
          //     onPressed: () {
          //       Navigator.pushNamed(context, "routeName");
          //     },
          //   ),
          // ],
        ),
        body: Stack(fit: StackFit.expand, children: [
          BgImage(),
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: ListView(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: CustomTextField(
                          onSaved: (input) {
                            name = input;
                          },
                          icon: Icon(Icons.account_circle),
                          hint: "Nursery Name",
                        )),
                    Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: TextField(
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          decoration: new InputDecoration(
                            // icon: Icon(Icons.search),
                            prefix: CountryCodePicker(
                                searchDecoration: InputDecoration(
                                    fillColor: Colors.white,
                                    counterStyle:
                                        TextStyle(color: Colors.white)),
                                showFlag: true,
                                initialSelection: 'pk',
                                showCountryOnly: false,
                                favorite: [
                                  '+92',
                                ],
                                textStyle: TextStyle(color: Colors.white),
                                showOnlyCountryWhenClosed: false,
                                onChanged: _onCountryChange),

                            // hintText: "Phone Number",
                            // hintStyle: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     fontSize: 15,
                            //     color: Colors.white),

                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              borderSide: const BorderSide(
                                color: kPrimaryColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              borderSide: BorderSide(color: kPrimaryColor),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: phone,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                      child: TextFormField(
                        onSaved: (input) {
                          password = input;
                        },
                        autofocus: true,
                        obscureText: isPasswordTextField ? showPassword : false,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                            hintText: 'Password',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: kPrimaryColor,
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 3,
                              ),
                            ),
                            suffixIcon: isPasswordTextField
                                ? IconButton(
                                    onPressed: () {
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.grey,
                                    ),
                                  )
                                : null,
                            prefixIcon: Padding(
                              child: IconTheme(
                                data: IconThemeData(color: kPrimaryColor),
                                child: Icon(Icons.lock),
                              ),
                              padding: EdgeInsets.only(left: 30, right: 10),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: _saving == false
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RaisedButton(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Cancel",
                                      style: TextStyle(
                                          fontSize: 18,
                                          letterSpacing: 2,
                                          color: Colors.black)),
                                ),
                                RaisedButton(
                                  color: kPrimaryColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onPressed: () {
                                    getUserLocation();
                                  },
                                  child: Text(
                                    "Save",
                                    style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 3,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          : Padding(
                              padding: EdgeInsets.symmetric(horizontal: 140),
                              child: CircularProgressIndicator(
                                valueColor: new AlwaysStoppedAnimation<Color>(
                                    kPrimaryColor),
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]));
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
    );
  }

  void _onCountryChange(CountryCode countryCode) {
    code = countryCode.toString();
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
    _updatePrifle(
        currentPosition.latitude, currentPosition.longitude, place.locality);
  }

  void _updatePrifle(lat, long, city) async {
    final FormState form = _formKey.currentState;
    form.save();
    setState(() {
      _saving = true;
    });
    try {
      var token = Storage.prefs.getString('token');
      var url = Uri.parse(server + "/api/nursery-details/update");
      final response = await http.post(url, headers: {
        'Authorization': 'Bearer $token',
      }, body: {
        'name': name,
        'password': password,
        'phone': code + phone.text,
        'lat': lat.toString(),
        'long': long.toString(),
        'city': city,
      });
      showAlertDialog(context, "Alert", json.decode(response.body).toString());
      setState(() {
        _saving = false;
      });
    } catch (error) {
      showAlertDialog(context, "Alert", error.toString());
      setState(() {
        _saving = false;
      });
    }
  }
}
