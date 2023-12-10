import 'package:booking_uz/features/presentation/pages/mainScreens/homeMessageNotification/notification_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homePage/attractions_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homePage/car_rental_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homePage/stays_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homePage/taxi_page.dart';
import 'package:flutter/material.dart';

import 'homeMessageNotification/message_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff003290),
          centerTitle: true,
          title: const Text(
            'BookEasy',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MessagePage.id);
              },
              icon: const Icon(Icons.messenger_outline),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, NotificationPage.id);
              },
              icon: const Icon(Icons.notifications_none),
            ),
          ],
          bottom: const TabBar(
              physics: ScrollPhysics(),
              isScrollable: true,
              indicatorColor: Colors.white,
              unselectedLabelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
              labelStyle: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              tabs: [
                Tab(
                  child: Text(
                    "Stays",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ),
                Tab(
                  child: Text(
                    "Car rental",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ),
                Tab(
                  child: Text(
                    "Taxi",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ),
                Tab(
                  child: Text(
                    "Attractions",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          StaysPage(),
          CarRentalPage(),
          TaxiPage(),
          AttractionPage()
        ]),
      ),
    );
  }
}
