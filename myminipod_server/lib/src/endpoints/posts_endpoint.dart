import 'package:myminipod_server/src/dummy_repository.dart';
import 'package:myminipod_server/src/generated/post_detail.dart';
import 'package:myminipod_server/src/generated/post_digest.dart';
import 'package:serverpod/serverpod.dart';
import 'package:uuid/uuid.dart';

class PostsEndpoint extends Endpoint {
  Future<List<PostDigest>> getPosts(Session session) async {
    return PostRepository().getPosts();
  }

  Future<PostDetail> getPost(Session session, UuidValue postId) async {
    final post = PostRepository().getPost(postId);
    return post;
  }

  Future<Map<UuidValue, bool>> getLikes(Session session, List<UuidValue> postIds) async {
    final results = await Future.wait([
      for (var postId in postIds)
        PostRepository().getLike(postId)
    ]);

    return {
      for (var i = 0; i < postIds.length; i++)
        postIds[i]: results[i],
    };
  }

  Future<bool> toggleLike(Session session, UuidValue postId) async {
    Future.delayed(Duration(milliseconds: 300));
    return PostRepository().toggleLike(postId);
  }
}
