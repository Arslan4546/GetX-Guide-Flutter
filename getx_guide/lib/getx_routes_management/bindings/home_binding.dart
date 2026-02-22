import 'package:get/get.dart';
import 'package:getx_guide/getx_routes_management/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
