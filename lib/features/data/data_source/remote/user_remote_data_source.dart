import '../../model/home/currency.dart';

abstract class HomeRemoteDataSource {
  const HomeRemoteDataSource();

  Future<List<CurrencyResponseModel>> fetchCurrency();
}