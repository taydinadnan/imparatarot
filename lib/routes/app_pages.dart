import 'package:get/get.dart';

import '../app.dart';
import '../screens/random/details_page.dart';
part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => App(),
      children: const [],
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => DetailsPage(
        results: Get.arguments,
      ),
      children: const [],
    ),
  ];
}
