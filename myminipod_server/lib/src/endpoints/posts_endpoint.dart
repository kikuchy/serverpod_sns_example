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

  Future<bool> getLike(Session session, UuidValue postId) async {
    return PostRepository().getLike(postId);
  }

  Future<bool> toggleLike(Session session, UuidValue postId) async {
    Future.delayed(Duration(milliseconds: 300));
    return PostRepository().toggleLike(postId);
  }
}
