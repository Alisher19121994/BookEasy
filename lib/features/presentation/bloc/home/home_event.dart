import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class FetchCurrencyEvent extends HomeEvent {
  const FetchCurrencyEvent();
  @override
  List<Object> get props => [];
}