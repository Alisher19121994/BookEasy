import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../entity/home/home_entity.dart';
import '../../repository/home/home_repository.dart';

class CurrencyUseCase extends UseCase<List<CurrencyEntity>, CurrencyParams> {
  CurrencyUseCase(this.repository);

  final HomeRepository repository;

  @override
  Future<Either<Failure, List<CurrencyEntity>>> call(CurrencyParams params) async {
    final List<CurrencyEntity> sortedList = [];
    final response = await repository.fetchCurrency();
    // for (final item in response.right) {
    //   if (item.nbuCellPrice.isNotEmpty && item.nbuBuyPrice.isNotEmpty) {
    //     sortedList.add(item);
    //   }
    // }
    return Right(sortedList);
  }
}

class CurrencyParams {}
