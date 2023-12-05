import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/deals/deals_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/airport_taxis/airport_taxis_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/travel_articles_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static const String id = 'ProfilePage';
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:  const Color(0xff003290),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
            color: const Color(0xff003290),
            height: height * 0.25,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //#profile photo and fullname
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 1.3,color: const Color(0xfffeba02))
                          ),
                          child: const CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage('https://wallpapers.com/images/featured/manchester-united-logo-pictures-e45hfwpfz9aewlv4.jpg'),

                          )
                      ),
                      const SizedBox(height: 12.0),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(child: Text('Daminov',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                          SizedBox(height: 6.0),
                          FittedBox(child: Text('Alisher',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 14.0),
                  //# rounded corner for admobs
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    height: height * 0.22,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xfffcffa4)
                    ),
                    child: Center(child: Text('Ads mob')),
                  ),
                  const SizedBox(height: 14.0),
                  //#Management
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FittedBox(child: Text('Management',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  //#manage your accounts
                  const Row(
                    children: [
                      Icon(Icons.perm_identity_rounded),
                      SizedBox(width: 14.0,),
                      FittedBox(child: Text('Manage your account',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17),)),

                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  //#discover
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FittedBox(child: Text('Discover',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  //#Deals
                   InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, DealsPage.id);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.data_saver_on),
                        SizedBox(width: 14.0,),
                        FittedBox(child: Text('Deals',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17),)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0,),
                  //#Airport taxis
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, AirportTaxisPage.id);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.airplane_ticket_outlined),
                        SizedBox(width: 14.0,),
                        FittedBox(child: Text('Airport taxis',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17),)),

                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0,),
                  //#Travel articles
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, TravelArticlesPage.id);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.travel_explore),
                        SizedBox(width: 14.0,),
                        FittedBox(child: Text('Travel articles',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17),)),

                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0,),
                  //#Settings
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FittedBox(child: Text('Settings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),)),
                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  //#Settings
                  const Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 14.0,),
                      FittedBox(child: Text('Settings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17),)),

                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  //#Sign out
                  const Row(
                    children: [
                      Icon(Icons.logout_rounded,color: Colors.redAccent,),
                      SizedBox(width: 14.0,),
                      FittedBox(child: Text('Sign out',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.normal,fontSize: 17),)),

                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
