import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
//import 'package:green_app/screens/nurseryDashboard/details/components/icon_card.dart';
import 'package:green_app/services/api/auth.dart';
import 'components/bg_image.dart';
import 'components/custome_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key key,
    this.type,
  }) : super(key: key);
  final String type;
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var name;
  var email;
  var password;
  var passwordConfirmation;
  bool _loading = false;
  bool _autoValidate = false;
  bool _register = false;
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
                            // Container(
                            //   width: MediaQuery.of(context).size.width,
                            //   height: 140,
                            //   child: Stack(
                            //     children: <Widget>[
                            //       Positioned(
                            //         child: Align(
                            //           child: Container(
                            //             width: 130,
                            //             height: 130,
                            //             decoration: BoxDecoration(
                            //                 shape: BoxShape.circle,
                            //                 color: kPrimaryColor),
                            //           ),
                            //           alignment: Alignment.center,
                            //         ),
                            //       ),
                            //       Positioned(
                            //         child: Container(
                            //           child: Text(
                            //             "Welcome",
                            //             style: TextStyle(
                            //               fontSize: 48,
                            //               fontWeight: FontWeight.bold,
                            //               color: Colors.white,
                            //             ),
                            //           ),
                            //           alignment: Alignment.center,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 20, top: 60),
                                child: CustomTextField(
                                  icon: Icon(Icons.email),
                                  onSaved: (input) => name = input,
                                  validator: (input) =>
                                      input.isEmpty ? "*Required" : null,
                                  hint: "Name",
                                )),
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
                            Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: CustomTextField(
                                  icon: Icon(Icons.lock),
                                  obsecure: true,
                                  onSaved: (input) =>
                                      passwordConfirmation = input,
                                  validator: (input) =>
                                      input.isEmpty ? "*Required" : null,
                                  hint: "PASSWORD CONFIRM",
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
                                  : _register == true
                                      ? Container(
                                          child: filledButton(
                                            "Login",
                                            kTextColor,
                                            kPrimaryColor,
                                            kPrimaryColor,
                                            Colors.white,
                                            _login,
                                          ),
                                          height: 50,
                                           width:
                                              MediaQuery.of(context).size.width,
                                        )
                                      : Container(
                                          child: filledButton(
                                              "Create Account",
                                              kTextColor,
                                              kPrimaryColor,
                                              kPrimaryColor,
                                              Colors.white,
                                              _validateRegisterInput),
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                        ),
                            ),
                            SizedBox(
                              height: 20,
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

  void _validateRegisterInput() async {
    final FormState form = _formKey.currentState;
    if (_formKey.currentState.validate()) {
      form.save();
      setState(() {
        _loading = true;
      });
      try {
        var response = await registration.userRegistration(
            name, email, password, passwordConfirmation, widget.type);
        // var user = response.user;
        setState(() {
          msg = name + " You are Register Successfully";
          _loading = false;
          _register = true;
        });
      //  showAlertDialog(context, "Congratulation for joining", msg);
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
       // showAlertDialog(context, "Registration Failed", msg);
      }
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  void _login() {
    Navigator.pushNamed(context, "/login");
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
        height: 220,
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Container(
              child: Align(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: kPrimaryColor),
                  width: 150,
                  height: 150,
                ),
              ),
              height: 154,
            )),
            Positioned(
              child: Container(
                  height: 150,
                  child: Align(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
              bottom: MediaQuery.of(context).size.height * 0.046,
              right: MediaQuery.of(context).size.width * 0.22,
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.width * 0.08,
              bottom: 0,
              right: MediaQuery.of(context).size.width * 0.32,
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
