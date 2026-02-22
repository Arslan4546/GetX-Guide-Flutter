import '../../core/network_service.dart';
import '../models/post_model.dart';

class PostRepository {
  final NetworkService _networkService;

  PostRepository(this._networkService);

  Future<List<PostModel>> fetchPosts() async {
    final response = await _networkService.get("https://dummyjson.com/posts");

    List postsJson = response['posts'];

    return postsJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
