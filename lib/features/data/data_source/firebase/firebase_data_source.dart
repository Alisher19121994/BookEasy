import 'package:booking_uz/features/data/model/firebase/travel_more_model.dart';

abstract class HomeFirebaseDataSource {
  const HomeFirebaseDataSource();

  Future<List<UserIdModel>> fetchExploreDeals();
}
