import 'package:myminipod_client/myminipod_client.dart';
import 'package:myminipod_flutter/data/client.dart';
import 'package:myminipod_flutter/data/get_like.dart';
import 'package:myminipod_flutter/notifier/posts_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'like.g.dart';

@riverpod
class LikeNotifier extends _$LikeNotifier {
  @override
  Future<bool> build(UuidValue postId) async {
    return ref.read(getLikeProvider)(postId);
  }

  Future<void> toggleLike() async {
    final posts = await ref.watch(postsListNotifierProvider.future);
    final post = posts.firstWhere((element) => element.id == postId);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref.read(clientProvider).posts.toggleLike(post.id),
    );
  }
}
