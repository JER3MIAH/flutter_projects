import 'package:countries_api/src/features/home/presentation/pages/home_page.dart';
import 'package:countries_api/src/features/navigation/models/app_route.dart';

class RouteInfo {
  static AppRoute home = AppRoute(
    name: 'homePage',
    path: '/',
    builder: (_, __) => const HomePage(),
  );
}
