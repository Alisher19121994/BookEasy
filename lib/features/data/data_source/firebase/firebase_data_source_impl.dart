
import 'package:booking_uz/features/data/data_source/firebase/firebase_data_source.dart';
import 'package:booking_uz/features/data/model/firebase/travel_more_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/exceptions.dart';

class HomeFirebaseDataSourceImpl extends HomeFirebaseDataSource {

  @override
  Future<List<TravelMoreModel>> fetchExploreDeals() {
    //try{
      final CollectionReference _travelMoreList = FirebaseFirestore.instance.collection('TravelMoreList');

    // }catch(e){
    //   if (kDebugMode) {
    //     print(e);
    //   }
    // }
    ///return  _travelMoreList;
     throw const ServerException(message: 'ERROR');
  }

}