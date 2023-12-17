import 'package:equatable/equatable.dart';

class TravelMoreEntity extends Equatable {
  final String title;
  final String discountTitle;

  const TravelMoreEntity({required this.title, required this.discountTitle});

  @override
  List<Object?> get props => [title, discountTitle];
}
