import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myminipod_client/myminipod_client.dart';
import 'package:myminipod_flutter/notifier/post_detail.dart';
import 'package:myminipod_flutter/view/like_button.dart';

class PostDetailPage extends ConsumerWidget {
  const PostDetailPage({required this.postId, super.key});

  final UuidValue postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(postDetailNotifierProvider(postId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Detail'),
      ),
      body: post.when(
        data: (data) {
          return Column(
            children: [
              Text(data.headline),
              Text(data.content),
              LikeButton(postId: postId),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
