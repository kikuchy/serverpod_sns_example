import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myminipod_client/myminipod_client.dart';
import 'package:myminipod_flutter/notifier/like.dart';

class LikeButton extends ConsumerWidget {
  const LikeButton({required this.postId, super.key});

  final UuidValue postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLiked = ref.watch(likeNotifierProvider(postId));
    return isLiked.when(
      data: (data) {
        return IconButton(
          icon: Icon(data ? Icons.favorite : Icons.favorite_border),
          onPressed: () {
            ref.read(likeNotifierProvider(postId).notifier).toggleLike();
          },
        );
      },
      error: (error, st) {
        return IconButton(
          icon: const Icon(Icons.error),
          onPressed: () => ref.refresh(likeNotifierProvider(postId)),
        );
      },
      loading: () {
        return const CircularProgressIndicator.adaptive();
      },
    );
  }
}
