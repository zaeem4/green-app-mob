import 'package:flutter/material.dart';
import 'package:green_app/screens/NursuryDashboard/DashboardSecreen.dart';
import 'package:green_app/screens/authentication/components/bg_image.dart';
import 'package:green_app/screens/authentication/components/custome_text_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:path/path.dart';
import '../../../../constants.dart';
import '../SettingSecreen.dart';
class SellerProfile extends StatefulWidget {
  @override
  _SellerProfileState createState() => _SellerProfileState();
}
bool showPassword = false;
String username;
bool isPasswordTextField=true;

class _SellerProfileState extends State<SellerProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

var name;
var password;
var phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
        //  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blueGrey[200],
            ),
            onPressed: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) =>DashboardSecreen()));
            },
          ),
          title:  Text(
            "Edit Profile",
            style: TextStyle(
                color:Colors.white,
                fontSize: 22, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.blueGrey[200],
              ),
              onPressed: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) =>SellerSettings()));},
            ),
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
           Form(
             key: _formKey,
             child: Container(
              padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              child: GestureDetector(
                onTap: (){
                  FocusScope.of(context).unfocus();
                },
                child: ListView(
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap:(){},
                            child: Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 4,
                                      color: Theme.of(context).scaffoldBackgroundColor
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2, blurRadius: 10,
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(0,10)
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          'https://i0.wp.com/www.charcoalgravel.com/wp-content/uploads/2018/06/Edited-7-1.jpg?w=1365&ssl=1'))
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 4,
                                    color: Theme.of(context).scaffoldBackgroundColor,
                                  ),
                                  color: Colors.green,
                                ),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: CustomTextField(
                              onSaved: (input) {
                              name = input;
                            },
                          icon: Icon(Icons.account_circle),
                          hint: "Company Name",
                        )),
                    Container(
                    height: 100,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: TextField(
                          style: TextStyle(fontSize: 15, color: Colors.white),

                          decoration: new InputDecoration(
                            // icon: Icon(Icons.search),
                            prefix:
                            CountryCodePicker(
                                searchDecoration: InputDecoration(
                                  fillColor: Colors.white,
                                  counterStyle: TextStyle(
                                    color: Colors.white
                                  )
                                ),
                              showFlag: true, //displays flag, true by default
                              initialSelection: 'pakistan',
                              showCountryOnly: false,
                              favorite: ['+92',],textStyle: TextStyle(
                              color: Colors.white
                            ),

                            ),

                            hintText: "Phone Number",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),

                            enabledBorder: const OutlineInputBorder(

                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              borderSide: const BorderSide(
                                color: kPrimaryColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              borderSide: BorderSide(color: kPrimaryColor),

                            ),
                          ),

                          keyboardType: TextInputType.number,
                          controller: phone,
                        ),
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.only(bottom: 20,right: 20,left: 20),
                        child :TextFormField(
                          onSaved: (input) {
                            password = input;
                          },
                          autofocus: true,
                       obscureText: isPasswordTextField ? showPassword : false,

                       style: TextStyle(fontSize: 24, color: Colors.white),
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
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
                      onPressed: (){
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                    ): null,
                    prefixIcon: Padding(
                      child: IconTheme(
                        data: IconThemeData(color: kPrimaryColor),
                        child: Icon(Icons.lock),
                      ),
                      padding: EdgeInsets.only(left: 30, right: 10),
                    )),
              ),
             ),     SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RaisedButton(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: (){  Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) =>DashboardSecreen()));
                          },
                          child: Text("Cancel",
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 2.2,
                                  color: Colors.black)),
                        ),
                        RaisedButton(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: (){  Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) =>DashboardSecreen()));
                          },
                          child: Text("Done",
                            style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2.2,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
          ),
           ),
    ]
        )

    );
  }


  Widget buildTextField(
      String labelText, String placeholder,bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
              onPressed: (){
                setState(() {
                  showPassword = !showPassword;
                });
              },
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              ),
            ): null,
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
}