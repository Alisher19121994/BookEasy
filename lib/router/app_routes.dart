import 'package:booking_uz/features/presentation/pages/mainScreens/bookingsTabBars/active_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/bookingsTabBars/bookingsPlusPage/booking_plus_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/bookingsTabBars/cancelled_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/bookingsTabBars/past_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/bookings_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/enterDestenation/enter_destenation.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homeMessageNotification/message_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homeMessageNotification/notification_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homePage/attractions_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homePage/car_rental_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homePage/stays_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/homePage/taxi_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/airport_taxis/airport_taxis_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/deals/deals_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/deals/details_of_city/item_of_city.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/deals/item_list_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/destinations.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/eat_drink.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/family_travel.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/future_of_travel.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/travel_articles.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/tab_bars_of_travel_articles/travel_tips.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/discover/travel_articles/travel_articles_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/settings/about/terms_and_conditions.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile/settings/settings_main_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/profile_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/savedPlusPage/renameAlertDialog/rename_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/savedPlusPage/saved_plus_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/savedPlusPage/title_page.dart';
import 'package:booking_uz/features/presentation/pages/mainScreens/saved_page.dart';
import 'package:booking_uz/features/presentation/pages/registration/sign_in_page.dart';
import 'package:booking_uz/features/presentation/pages/registration/sign_up_page.dart';
import 'package:booking_uz/router/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/presentation/bloc/home/home_bloc.dart';
import '../features/presentation/bloc/home/home_event.dart';
import '../features/presentation/pages/mainScreens/home_page.dart';
import '../features/presentation/pages/mainScreens/profile/settings/about/privacy_policy.dart';
import '../features/presentation/pages/splash/bloc/splash_bloc.dart';
import '../features/presentation/pages/splash/pages/splash_page.dart';
import '../injector_container.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

sealed class AppRoutes {
  AppRoutes._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SplashBloc(),
            child: const SplashPage(),
          ),
        );
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                //HomeBloc(currencyUsCase: FetchCurrencyEvent()),
                sl<HomeBloc>()..add(const FetchCurrencyEvent()),
            child: const HomePage(),
          ),
        );
/****/
      // case Routes.savedPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const SavedPage(),
      //     ),
      //   );
      //
      // case Routes.bookingsPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const BookingsPage(),
      //     ),
      //   );
      //
      // case Routes.profilePage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const ProfilePage(),
      //     ),
      //   );
      //
      // case Routes.activePage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const ActivePage(),
      //     ),
      //   );
      //
      // case Routes.pastPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const PastPage(),
      //     ),
      //   );
      //
      // case Routes.cancelledPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const CancelledPage(),
      //     ),
      //   );
      //
      // case Routes.enterDestination:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const EnterDestination(),
      //     ),
      //   );
      //
      // case Routes.staysPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const StaysPage(),
      //     ),
      //   );
      // case Routes.carRentalPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const CarRentalPage(),
      //     ),
      //   );
      //
      // case Routes.taxiPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const TaxiPage(),
      //     ),
      //   );
      // case Routes.attractionPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const AttractionPage(),
      //     ),
      //   );
      //
      // case Routes.messagePage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const MessagePage(),
      //     ),
      //   );
      //
      // case Routes.notificationPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const NotificationPage(),
      //     ),
      //   );
      //
      // case Routes.savedPlusPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const SavedPlusPage(),
      //     ),
      //   );
      //
      // case Routes.renameSavedPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const RenameSavedPage(),
      //     ),
      //   );
      //
      // case Routes.titlePage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const TitlePage(),
      //     ),
      //   );
      //
      // case Routes.bookingsPlusPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const BookingsPlusPage(),
      //     ),
      //   );
      // case Routes.signInPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const SignInPage(),
      //     ),
      //   );
      //
      // case Routes.signUpPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const SignUpPage(),
      //     ),
      //   );
      //
      // case Routes.dealsPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const DealsPage(),
      //     ),
      //   );
      //
      // case Routes.dealsItemListPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const DealsItemListPage(),
      //     ),
      //   );
      //
      // case Routes.airportTaxisPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const AirportTaxisPage(),
      //     ),
      //   );
      //
      // case Routes.travelArticlesPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const TravelArticlesPage(),
      //     ),
      //   );
      //
      // case Routes.travelArticlesTabPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const TravelArticlesTabPage(),
      //     ),
      //   );
      //
      // case Routes.eatDrinkTabPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const EatDrinkTabPage(),
      //     ),
      //   );
      //
      // case Routes.destinationsTabPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const DestinationsTabPage(),
      //     ),
      //   );
      //
      // case Routes.familyTravelTabPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const FamilyTravelTabPage(),
      //     ),
      //   );
      //
      // case Routes.futureOfTravelTabPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const FutureOfTravelTabPage(),
      //     ),
      //   );
      //
      // case Routes.travelTipsTabPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const TravelTipsTabPage(),
      //     ),
      //   );
      //
      // case Routes.settingsMainPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const SettingsMainPage(),
      //     ),
      //   );
      //
      // case Routes.itemOfCityPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const ItemOfCityPage(),
      //     ),
      //   );
      //
      // case Routes.privacyPolicyPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const PrivacyPolicyPage(),
      //     ),
      //   );
      //
      // case Routes.TermsAndConditionsPage:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           sl<HomeBloc>()..add(const FetchCurrencyEvent()),
      //       child: const TermsAndConditionsPage(),
      //     ),
      //   );
    }
    return null;
  }
}
