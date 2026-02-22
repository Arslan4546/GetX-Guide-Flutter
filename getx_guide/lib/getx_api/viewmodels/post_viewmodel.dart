import 'package:get/get.dart';
import '../data/models/post_model.dart';
import '../data/repositories/post_repository.dart';

class PostViewModel extends GetxController {
  final PostRepository _repository;

  PostViewModel(this._repository);

  var isLoading = false.obs;
  var postList = <PostModel>[].obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  Future<void> fetchPosts() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final posts = await _repository.fetchPosts();
      postList.addAll(posts);
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
