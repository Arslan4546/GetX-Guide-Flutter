import 'package:get/get.dart';
import '../core/network_service.dart';
import '../data/repositories/post_repository.dart';
import '../viewmodels/post_viewmodel.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkService());
    Get.lazyPut(() => PostRepository(Get.find()));
    Get.lazyPut(() => PostViewModel(Get.find()));
  }
}
