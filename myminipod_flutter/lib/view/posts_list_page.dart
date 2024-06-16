import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myminipod_flutter/notifier/posts_list.dart';
import 'package:myminipod_flutter/view/like_button.dart';
import 'package:myminipod_flutter/view/post_detail.dart';

class PostsListPage extends HookConsumerWidget {
  const PostsListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: posts.when(
        data: (data) {
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(postsListNotifierProvider);
            },
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final post = data[index];
                return ListTile(
                  title: Text(post.headline),
                  subtitle: Text(post.creaedAt.toIso8601String()),
                  trailing: LikeButton(postId: post.id),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PostDetailPage(postId: post.id),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
