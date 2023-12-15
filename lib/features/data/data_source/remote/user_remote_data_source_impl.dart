import 'package:booking_uz/features/data/data_source/remote/user_remote_data_source.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/exceptions.dart';
import '../../model/home/currency.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  const HomeRemoteDataSourceImpl(this.dio);

  final Dio dio;

  @override
  Future<List<CurrencyResponseModel>> fetchCurrency() async {
    try {
      final Response response = await dio.get(
        'https://nbu.uz/en/exchange-rates/json/',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List json = response.data as List;
        return json.map((e) => CurrencyResponseModel.fromJson(e)).toList();
      } else {
        throw ServerException.fromJson(response.data);
      }
    } on DioException catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw const ServerException(message: 'ERROR');
    }
  }
}