import 'package:booking_uz/features/presentation/pages/mainScreens/bookings_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/home_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/saved_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const String id = 'MainPage';
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  List listOfPages = [
    const HomePage(),
    const SavedPage(),
    const BookingsPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfPages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color(0xff009fe3),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel_sharp),label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
        onTap: (value){
          setState(() {
            index = value;
          });
        },

      ),

    );
  }
}
