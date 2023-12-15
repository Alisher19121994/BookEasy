import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/data/data_source/remote/user_remote_data_source.dart';
import 'features/data/data_source/remote/user_remote_data_source_impl.dart';
import 'features/data/repository/home/home_repository_impl.dart';
import 'features/domain/repository/home/home_repository.dart';
import 'features/domain/usecase/home/home_usecase.dart';
import 'features/presentation/bloc/home/home_bloc.dart';
import 'features/presentation/pages/splash/bloc/splash_bloc.dart';

final sl = GetIt.instance;

Future<void> homeFeature() async {
  sl.registerLazySingleton(() => Dio()
    ..options = BaseOptions(
      contentType: 'application/json',
      sendTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));
  sl.registerFactory<SplashBloc>(SplashBloc.new);
  sl.registerFactory(() => HomeBloc(currencyUsCase: sl()));
  //
  // /// UseCases
  sl.registerLazySingleton<HomeUseCase>(() => HomeUseCase(sl()));

  ///Data and Network
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(sl()));

  ///Repositories
  sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(remoteDataSource: sl()));
}
