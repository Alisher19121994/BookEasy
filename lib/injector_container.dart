import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
   // External
  //await initHive();

  sl
    ..registerLazySingleton(() => Dio()
      ..options = BaseOptions(
        contentType: 'application/json',
        sendTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      )
      ..interceptors.addAll(
        [
          LogInterceptor(
            requestBody: kDebugMode,
            responseBody: kDebugMode,
            logPrint: (object) =>
            kDebugMode ? log('dio: ${object.toString()}') : null,
          ),
          //chuck.getDioInterceptor(),
        ],
      ),
    )


    // SplashBloc
    ..registerFactory<SplashBloc>(SplashBloc.new)

    //HomeBloc
    ..registerFactory(() => HomeBloc(currencyUsCase: sl()))

    //UseCases
    ..registerLazySingleton<HomeUseCase>(() => HomeUseCase(sl()))

    //Data and Network
    ..registerLazySingleton<HomeRemoteDataSource>(
        () => HomeRemoteDataSourceImpl(sl()))

    //Repositories
    ..registerLazySingleton<HomeRepository>(
        () => HomeRepositoryImpl(remoteDataSource: sl()));
}
// Future<void> initHive() async {
//   const boxName = 'clean_architecture_box';
//   final Directory directory = await getApplicationDocumentsDirectory();
//   Hive.init(directory.path);
//   _box = await Hive.openBox<dynamic>(boxName);
// }

