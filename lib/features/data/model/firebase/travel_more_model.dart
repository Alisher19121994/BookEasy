class TravelMoreModel {
  String? title;
  String? discountTitle;

  TravelMoreModel({this.title, this.discountTitle});

  TravelMoreModel.fromJson(Map json) {
    title = json['title'];
    discountTitle = json['discountTitle'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['discountTitle'] = discountTitle;
    return map;
  }
}
