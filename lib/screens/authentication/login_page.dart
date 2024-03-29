import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/nursuryDashboard/nursery_dashboard.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:green_app/services/api/auth.dart';
import 'package:green_app/storage.dart';
import 'components/bg_image.dart';
import 'components/custome_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var name;
  var email;
  var password;
  var passwordConfirmation;
  bool _loading = false;
  bool _autoValidate = false;
  var msg = "";
  Auth registration;

  void initState() {
    super.initState();
    registration = new Auth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      logo(),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: CustomTextField(
                                  onSaved: (input) {
                                    email = input;
                                  },
                                  validator: emailValidator,
                                  icon: Icon(Icons.email),
                                  hint: "EMAIL",
                                )),
                            Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: CustomTextField(
                                  icon: Icon(Icons.lock),
                                  obsecure: true,
                                  onSaved: (input) => password = input,
                                  validator: (input) =>
                                      input.isEmpty ? "*Required" : null,
                                  hint: "PASSWORD",
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: _loading == true
                                  ? CircularProgressIndicator(
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                              kPrimaryColor),
                                    )
                                  : Container(
                                      child: filledButton(
                                          "Login",
                                          kTextColor,
                                          kPrimaryColor,
                                          kPrimaryColor,
                                          Colors.white,
                                          _validateLoginInput),
                                      height: 50,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                    ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Container(
                                child: filledButton(
                                    "Create Account",
                                    kTextColor,
                                    kPrimaryColor,
                                    kPrimaryColor,
                                    Colors.white,
                                    _register),
                                height: 50,
                                width: MediaQuery.of(context).size.width / 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void _validateLoginInput() async {
    final FormState form = _formKey.currentState;
    if (_formKey.currentState.validate()) {
      form.save();
      setState(() {
        _loading = true;
      });
      try {
        var response = await registration.login(email, password);
        if (response.user.type == "user") {
          Storage.prefs.setBool("loggedIn", true);
          Storage.prefs.setString("token", response.token);
          Storage.prefs.setString("type", response.user.type);
          Navigator.pushReplacementNamed(context, "/user-home");
        } else if (response.user.type == "nursery") {
          Storage.prefs.setBool("loggedIn", true);
          Storage.prefs.setString("token", response.token);
          Storage.prefs.setString("type", response.user.type);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => NurseryDashboard()));
        }
      } catch (error) {
        setState(() {
          msg = error.toString();
          msg = msg.replaceAll("{", "");
          msg = msg.replaceAll("}", "");
          msg = msg.replaceAll("]", "] \n");
          msg = msg.replaceAll("Exception", "");
          msg = msg.replaceAll(":", "");
          _loading = false;
        });
        showAlertDialog(context, "Login Failed", msg);
      }
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  void _register() {
    Navigator.pushNamed(context, "/select-category");
  }

  Widget filledButton(String text, Color splashColor, Color highlightColor,
      Color fillColor, Color textColor, void function()) {
    // ignore: deprecated_member_use
    return RaisedButton(
      highlightElevation: 0.0,
      splashColor: splashColor,
      highlightColor: highlightColor,
      elevation: 0.0,
      color: fillColor,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
      ),
      onPressed: () {
        function();
      },
    );
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty) return '*Required';
    if (!regex.hasMatch(value))
      return '*Enter a valid email';
    else
      return null;
  }

  Widget logo() {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 240,
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Container(
              child: Align(
                child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: (BorderRadius.circular(25)),
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/iconpic.png"),
                        ))),
              ),
              height: 154,
            )),
            Positioned(
              top: 100,
              width: MediaQuery.of(context).size.width - 20,
              child: Container(
                  height: 150,
                  child: Align(
                    child: Text(
                      "GREEN APP",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  )),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
              bottom: MediaQuery.of(context).size.height * 0.046,
              right: MediaQuery.of(context).size.width * 0.22,
              child: Container(),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.width * 0.08,
              bottom: 0,
              right: MediaQuery.of(context).size.width * 0.32,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
