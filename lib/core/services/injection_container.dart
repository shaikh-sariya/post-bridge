/// File: injection_container.dart
/// Description: Service Locator for Dependency Injection.
library;

import 'package:post_bridge/core/constants/imports.dart';

/// Service Locator instance for dependency injection.
final sl = GetIt.instance;

/// Initializes the dependency injection by registering factories and
/// singletons.
Future<void> init() async {
  sl
    // Register http.Client as a lazy singleton.
    ..registerLazySingleton(Dio.new)

    // Register HomeCubit as a factory, providing dependencies.
    ..registerFactory(HomeCubit.new);
}
