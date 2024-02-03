import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:practice/todos_w_api/ui/services/api_service.dart';

final locator = GetIt.instance;

void setUp() {
  debugPrint('setUp is called');

  //* creates a single instance, but only when its first called
  locator.registerLazySingleton<TodosApi>(() => TodosApi());

  //* theres also...
  //* registerSingleton(), => creates an instance when the app starts
  //* registerFactory(), => created a new instance every time its called
}
