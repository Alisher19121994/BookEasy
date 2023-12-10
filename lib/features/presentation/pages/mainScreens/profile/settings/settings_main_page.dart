import 'package:flutter/material.dart';

import 'about/privacy_policy.dart';
import 'about/terms_and_conditions.dart';

class SettingsMainPage extends StatefulWidget {
  const SettingsMainPage({super.key});

  static const String id = 'SettingsMainPage';

  @override
  State<SettingsMainPage> createState() => _SettingsMainPageState();
}

class _SettingsMainPageState extends State<SettingsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: const Color(0xff003290),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //#Device settings
            Container(
          height: 36.0,
          margin: const EdgeInsets.only(top: 4.0),
            child: const Text('Device settings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),),
          ),
            //#Language
            Container(
              height: 36.0,
              padding: const EdgeInsets.all(2.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Language',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('English',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
                      SizedBox(width: 10.0),
                      Icon(Icons.arrow_forward_ios,size: 14,)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            //#Currency
            Container(
              height: 36.0,
              padding: const EdgeInsets.all(2.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Currency',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Property currency',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
                      SizedBox(width: 10.0),
                      Icon(Icons.arrow_forward_ios,size: 14,)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            //#Temperature
            Container(
              height: 36.0,
              padding: const EdgeInsets.all(2.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Temperature',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Degrees in celsius',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
                      SizedBox(width: 10.0),
                      Icon(Icons.arrow_forward_ios,size: 14,)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            const Divider(thickness: 1.0),
            //#About
            Container(
              height: 36.0,
              margin: const EdgeInsets.only(top: 4.0),
              child: const Text('About',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),),
            ),
            //#Privacy policy
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, PrivacyPolicyPage.id);
              },
              child: Container(
                height: 36.0,
                padding: const EdgeInsets.all(2.0),
                child:  const Text('Privacy policy',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
              ),
            ),
            //#Terms and Conditions
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, TermsAndConditionsPage.id);
              },
              child: Container(
                height: 36.0,
                padding: const EdgeInsets.all(2.0),
                child:  const Text('Terms and Conditions',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
