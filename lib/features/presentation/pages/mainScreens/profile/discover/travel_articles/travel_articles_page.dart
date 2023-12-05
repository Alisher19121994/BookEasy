import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/destinations.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/eat_drink.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/family_travel.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/future_of_travel.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/travel_articles.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/travel_tips.dart';
import 'package:flutter/material.dart';

class TravelArticlesPage extends StatefulWidget {
  const TravelArticlesPage({super.key});

  static const String id = 'TravelArticlesPage';

  @override
  State<TravelArticlesPage> createState() => _TravelArticlesPageState();
}

class _TravelArticlesPageState extends State<TravelArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: false,
          backgroundColor: const Color(0xff003290),
          title: const Text(
            'Travel articles',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
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
                  "Travel articles",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "Eat & Drink",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "Destinations",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "Family travel",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "Future of travel",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              Tab(
                child: Text(
                  "Travel tips",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
            ],

          ),
        ),

        body: const TabBarView(
            children:[
              TravelArticlesTabPage(),
              EatDrinkTabPage(),
              DestinationsTabPage(),
              FamilyTravelTabPage(),
              FutureOfTravelTabPage(),
              TravelTipsTabPage()
            ] ),
      ),
    );
  }
}
