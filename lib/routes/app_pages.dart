import 'package:get/get.dart';

import '../app.dart';
import '../screens/random/details_page.dart';
part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const initial = Routes.root;

  static final routes = [
    GetPage(
      name: Routes.root,
      page: () => const App(),
      children: const [],
    ),
    GetPage(
      name: Routes.details,
      page: () => DetailsPage(
        results: Get.arguments,
      ),
      children: const [],
    ),
  ];
}
