import 'package:flutter/material.dart';
import 'features/presentation/pages/mainScreens/bookingsTabBars/active_page.dart';
import 'features/presentation/pages/mainScreens/bookingsTabBars/bookingsPlusPage/booking_plus_page.dart';
import 'features/presentation/pages/mainScreens/bookingsTabBars/cancelled_page.dart';
import 'features/presentation/pages/mainScreens/bookingsTabBars/past_page.dart';
import 'features/presentation/pages/mainScreens/bookings_page.dart';
import 'features/presentation/pages/mainScreens/enterDestenation/enter_destenation.dart';
import 'features/presentation/pages/mainScreens/homeMessageNotification/message_page.dart';
import 'features/presentation/pages/mainScreens/homeMessageNotification/notification_page.dart';
import 'features/presentation/pages/mainScreens/homePage/attractions_page.dart';
import 'features/presentation/pages/mainScreens/homePage/car_rental_page.dart';
import 'features/presentation/pages/mainScreens/homePage/stays_page.dart';
import 'features/presentation/pages/mainScreens/homePage/taxi_page.dart';
import 'features/presentation/pages/mainScreens/home_page.dart';
import 'features/presentation/pages/mainScreens/profile/discover/deals/deals_page.dart';
import 'features/presentation/pages/mainScreens/profile/discover/deals/details_of_city/item_of_city.dart';
import 'features/presentation/pages/mainScreens/profile/discover/deals/item_list_page.dart';
import 'features/presentation/pages/mainScreens/profile/discover/airport_taxis/airport_taxis_page.dart';
import 'features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/destinations.dart';
import 'features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/eat_drink.dart';
import 'features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/family_travel.dart';
import 'features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/future_of_travel.dart';
import 'features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/travel_articles.dart';
import 'features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/travel_tips.dart';
import 'features/presentation/pages/mainScreens/profile/discover/travel_articles/travel_articles_page.dart';
import 'features/presentation/pages/mainScreens/profile/settings/about/privacy_policy.dart';
import 'features/presentation/pages/mainScreens/profile/settings/about/terms_and_conditions.dart';
import 'features/presentation/pages/mainScreens/profile/settings/settings_main_page.dart';
import 'features/presentation/pages/mainScreens/profile_page.dart';
import 'features/presentation/pages/mainScreens/savedPlusPage/renameAlertDialog/rename_page.dart';
import 'features/presentation/pages/mainScreens/savedPlusPage/saved_plus_page.dart';
import 'features/presentation/pages/mainScreens/savedPlusPage/title_page.dart';
import 'features/presentation/pages/mainScreens/saved_page.dart';
import 'features/presentation/pages/registration/sign_in_page.dart';
import 'features/presentation/pages/registration/sign_up_page.dart';
import 'features/presentation/pages/splash/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      routes: {
        HomePage.id: (context)=> const HomePage(),
        SavedPage.id: (context)=> const SavedPage(),
        BookingsPage.id: (context)=> const BookingsPage(),
        ProfilePage.id: (context)=> const ProfilePage(),
        ActivePage.id: (context)=> const ActivePage(),
        PastPage.id: (context)=> const PastPage(),
        CancelledPage.id: (context)=> const CancelledPage(),
        EnterDestination.id: (context)=> const EnterDestination(),
        StaysPage.id: (context)=> const StaysPage(),
        CarRentalPage.id: (context)=> const CarRentalPage(),
        TaxiPage.id: (context)=> const TaxiPage(),
        AttractionPage.id: (context)=> const AttractionPage(),
        MessagePage.id: (context)=> const MessagePage(),
        NotificationPage.id: (context)=> const NotificationPage(),
        SavedPlusPage.id: (context)=> const SavedPlusPage(),
        RenameSavedPage.id: (context)=> const RenameSavedPage(),
        TitlePage.id: (context)=> const TitlePage(),
        BookingsPlusPage.id: (context)=> const BookingsPlusPage(),
        SignInPage.id: (context)=> const SignInPage(),
        SignUpPage.id: (context)=> const SignUpPage(),
        DealsPage.id: (context)=> const DealsPage(),
        DealsItemListPage.id: (context)=> const DealsItemListPage(),
        AirportTaxisPage.id: (context)=> const AirportTaxisPage(),
        TravelArticlesPage.id: (context)=> const TravelArticlesPage(),
        TravelArticlesTabPage.id: (context)=> const TravelArticlesTabPage(),
        EatDrinkTabPage.id: (context)=> const EatDrinkTabPage(),
        DestinationsTabPage.id: (context)=> const DestinationsTabPage(),
        FamilyTravelTabPage.id: (context)=> const FamilyTravelTabPage(),
        FutureOfTravelTabPage.id: (context)=> const FutureOfTravelTabPage(),
        TravelTipsTabPage.id: (context)=> const TravelTipsTabPage(),
        SettingsMainPage.id: (context)=> const SettingsMainPage(),
        ItemOfCityPage.id: (context)=> const ItemOfCityPage(),
        PrivacyPolicyPage.id: (context)=> const PrivacyPolicyPage(),
        TermsAndConditionsPage.id: (context)=> const TermsAndConditionsPage(),
      },
    );
  }
}

