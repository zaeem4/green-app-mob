import 'package:flutter/material.dart';
import 'package:green_app/screens/userDasboard/menu/user_menu.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
            color: Colors.green,
          ),
        ),
        title: new Text(
          "Privacy Policy",
          style: new TextStyle(
            color: Colors.green,
            fontSize: 25,
            fontFamily: 'Georgia',
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Last Updated: 10 July 2021",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
                leading: Icon(Icons.privacy_tip_sharp, color: Colors.blueGrey),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "ZIM built the Green Pakistan app as a Free app. This SERVICE is provided by Green Pakistan at no cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.  If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.        The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Green Pakistan unless otherwise defined in this Privacy Policy.",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading:
                    Icon(Icons.info_outline_rounded, color: Colors.blueGrey),
                title: Text(
                  "Information Collection and Use",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to email,phone,name. The information that I request will be retained on your device and is not collected by me in any way.                                                                        The app does use third party services that may collect information used to identify you.           Link to privacy policy of third party service providers used by the app                                     -> Google Play Services                               ->Google Analytics for Firebase",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading: Icon(Icons.data_usage_sharp, color: Colors.blueGrey),
                title: Text(
                  "Log Data",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading: Icon(Icons.check_box_outline_blank_rounded,
                    color: Colors.blueGrey),
                title: Text(
                  "Cookies",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.                               This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading:
                    Icon(Icons.design_services_rounded, color: Colors.blueGrey),
                title: Text(
                  "Service Providers",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "I may employ third-party companies and individuals due to the following reasons:             ->To facilitate our Service;                                 ->To provide the Service on our behalf;          ->To perform Service-related services; or      ->To assist us in analyzing how our Service is used.                                                                           I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading: Icon(Icons.security_outlined, color: Colors.blueGrey),
                title: Text(
                  "Security",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading: Icon(Icons.link_rounded, color: Colors.blueGrey),
                title: Text(
                  "Links To Other Sites",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading:
                    Icon(Icons.track_changes_outlined, color: Colors.blueGrey),
                title: Text(
                  "Future Changes",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.                                                           This policy is effective as of 2021-02-09",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading: Icon(Icons.contact_page, color: Colors.blueGrey),
                title: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at greenpakistan@gmail.com.                           This privacy policy page was created at privacypolicytemplate.net and modified/generated by App Privacy Policy Generator",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            ListTile(
                leading: Icon(Icons.double_arrow_sharp, color: Colors.blueGrey),
                title: Text(
                  "Thanks",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(
                  Icons.logout,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}
