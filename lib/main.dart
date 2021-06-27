import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/authentication/choose_auth.dart';
import 'package:green_app/screens/authentication/login_page.dart';
import 'package:green_app/screens/authentication/registration_page.dart';
import 'package:green_app/screens/userDasboard/menu/settings/components/picture_requirements.dart';
import 'package:green_app/screens/userDasboard/menu/settings/components/privacy_policy.dart';
import 'package:green_app/screens/userDasboard/menu/settings/components/tips_tricks.dart';
import 'package:green_app/screens/userDasboard/menu/settings/components/terms_conditions.dart';
import 'package:green_app/screens/userDasboard/menu/settings/settings.dart';
import 'package:green_app/screens/userDasboard/menu/user_menu.dart';
import 'package:green_app/screens/userDasboard/nearsetNursery/nursery_list.dart';
import 'package:green_app/screens/userDasboard/user_dashboard.dart';
import 'package:green_app/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Storage.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Green App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: UserDashboard(),
      // onGenerateRoute: (routes) {
      //   if (routes.name == "/") {
      //     return MaterialPageRoute(builder: (_) => LoginPage());
      //   } else if (routes.name == "/login") {
      //     return MaterialPageRoute(builder: (_) => LoginPage());
      //   } else if (routes.name == "/registration") {
      //     String type = routes.arguments;
      //     return MaterialPageRoute(
      //         builder: (_) => RegisterPage(
      //               type: type,
      //             ));
      //   } else if (routes.name == "/select-category") {
      //     return MaterialPageRoute(builder: (_) => SelectAuthCategory());
      //   }
      //   return null;
      // },
      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage(),
        "/registration": (context) => RegisterPage(),
        "/select-category": (context) => SelectAuthCategory(),
        "/user-home": (context) => UserDashboard(),
        "/user-menu": (context) => UserMenu(),
        "/user-settings": (context) => SettingsUser(),
        "/terms-and-conditions": (context) => TermsAndConditions(),
        "/privacy-policy": (context) => PrivacyPolicy(),
        "/tips-and-tricks": (context) => TipsAndTricks(),
        "/picture-requirements": (context) => PictureRequirements(),
        "/nearest-nurseries": (context) => NurseryList(),
      },
    );
  }
}
