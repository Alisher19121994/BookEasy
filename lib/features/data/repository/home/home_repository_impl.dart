import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../domain/entity/home/home_entity.dart';
import '../../../domain/repository/home/home_repository.dart';
import '../../data_source/user_remote_data_source.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl({
    required this.remoteDataSource,
  });

  final HomeRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, List<CurrencyEntity>>> fetchCurrency() async {
    try {
      final response = await remoteDataSource.fetchCurrency();
      return Right(
        response.map((e) => e.toEntity()).toList(),
      );
    } on Exception catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}