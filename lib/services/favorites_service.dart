import 'package:hive_flutter/hive_flutter.dart';
import '../models/post_model.dart';

class FavoritesService {
  static const String boxName = 'favoritesBox';

  Box<Post> get _box => Hive.box<Post>(boxName);

  Future<void> toggleFavorite(Post post) async {
    if (_box.containsKey(post.id)) {
      await _box.delete(post.id);
    } else {
      // Save a copy because a HiveObject can only live in one box at a time
      final copy = Post(
        id: post.id,
        title: post.title,
        body: post.body,
        userId: post.userId,
      );
      await _box.put(post.id, copy);
    }
  }

  bool isFavorite(int id) {
    return _box.containsKey(id);
  }

  List<Post> getFavorites() {
    return _box.values.toList();
  }
}
