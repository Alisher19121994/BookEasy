import 'package:booking_uz/features/presentation/pages/mainScreens/bookingsTabBars/cancelled_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/bookingsTabBars/past_page.dart';
import 'package:flutter/material.dart';

import 'bookingsTabBars/active_page.dart';
import 'bookingsTabBars/bookingsPlusPage/booking_plus_page.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});
  static const String id = 'BookingsPage';
  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff003290),
          title: const Text('Trips', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, BookingsPlusPage.id);

              },
              icon: const Icon(Icons.add,color: Colors.white,size: 30.0,),
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
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20),
            tabs: [
              Tab(
                child: Text(
                  "Active",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "Past",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "Cancelled",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
            ]
          ),
        ),
        body: const TabBarView(
            children: [
              ActivePage(),
              PastPage(),
              CancelledPage()
        ]),


      ),
    );
  }
}
