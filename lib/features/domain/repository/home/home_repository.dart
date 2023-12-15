import 'package:booking_uz/features/domain/entity/home/home_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<CurrencyEntity>>> fetchCurrency();

  // API methods
  //Future<DataState<List<CurrencyEntity>>> fetchCurrency();
}
