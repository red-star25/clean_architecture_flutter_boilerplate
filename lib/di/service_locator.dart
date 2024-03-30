import 'package:clean_architecture_bloc/core/connection/network_info.dart';
import 'package:clean_architecture_bloc/core/local/hive_helper.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../core/network/client/dio_client.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  await HiveHelper.init();

  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<DioClient>(() => DioClient(getIt<Dio>()));

  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(DataConnectionChecker()));
}
