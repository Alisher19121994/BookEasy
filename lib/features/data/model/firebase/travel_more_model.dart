import 'package:cloud_firestore/cloud_firestore.dart';

class UserIdModel {
  String? id;

  UserIdModel({ this.id});

  UserIdModel.fromSnapshot(QueryDocumentSnapshot  <Map <String, dynamic>> snapshot)
     :id = snapshot.id;


  UserIdModel.fromJson(Map json) {
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id as String;
    return map;
  }
}
