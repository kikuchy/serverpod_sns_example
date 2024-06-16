import 'package:myminipod_client/myminipod_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/client.dart';

part 'post_detail.g.dart';

@riverpod
class PostDetailNotifier extends _$PostDetailNotifier {
  @override
  Future<PostDetail> build(UuidValue postId) {
    return ref.read(clientProvider).posts.getPost(postId);
  }
}