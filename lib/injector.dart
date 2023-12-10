import 'features/domain/repository/home/home_repository.dart';
import 'features/domain/usecase/home/home_usecase.dart';
import 'features/presentation/bloc/home/home_bloc.dart';

// final sl = GetIt.instance;
//
// void homeFeature() {
//   sl..registerFactory(() => HomeBloc(currencyUsCase: sl()))
//
//   /// UseCases
//     ..registerLazySingleton<CurrencyUseCase>(() => CurrencyUseCase(sl()))
//
//   ///Data and Network
//     ..registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSourceImpl(sl()))
//
//   ///Repositories
//     ..registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(remoteDataSource: sl()),);
// }
