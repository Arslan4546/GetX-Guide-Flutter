import 'package:get/get.dart';
import 'package:getx_guide/getx_routes_management/bindings/home_binding.dart';
import '../views/home_view.dart';
import '../views/details_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),

    GetPage(name: AppRoutes.details, page: () => DetailsView()),
  ];
}
