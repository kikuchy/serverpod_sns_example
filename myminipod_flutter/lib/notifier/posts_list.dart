import 'package:myminipod_client/myminipod_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/client.dart';

part 'posts_list.g.dart';

@riverpod
class PostsListNotifier extends _$PostsListNotifier {
  @override
  Future<List<PostDigest>> build() {
    return ref.read(clientProvider).posts.getPosts();
  }
}
