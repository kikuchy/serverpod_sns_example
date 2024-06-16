import 'package:myminipod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

typedef PostAll = ({
  UuidValue id,
  String headline,
  String content,
  bool isLiked,
  DateTime creaedAt,
});

class PostRepository {
  static final _dummyPostsDigest = <PostAll>[
    for (var i = 0; i < 100; i++)
      (
        id: UuidValue.fromString(
            '00000000-0000-0000-0000-000000000${i.toString().padLeft(3, '0')}'),
        headline: 'headline$i',
        content:
            'content$i content$i content$i content$i content$i content$i content$i content$i content$i content$i content$i content$i content$i content$i ',
        isLiked: i % 3 == 0,
        creaedAt: DateTime.now(),
      ),
  ];

  static final PostRepository _instance = PostRepository._();
  factory PostRepository() => _instance;
  PostRepository._();

  Future<List<PostDigest>> getPosts() async {
    return _dummyPostsDigest
        .map((e) => PostDigest(
            id: e.id,
            headline: e.headline,
            isLiked: e.isLiked,
            creaedAt: e.creaedAt))
        .toList();
  }

  Future<PostDetail> getPost(UuidValue postId) async {
    final post =
        _dummyPostsDigest.firstWhere((element) => element.id == postId);
    return PostDetail(
      id: post.id,
      headline: post.headline,
      content: post.content,
      isLiked: post.isLiked,
      creaedAt: post.creaedAt,
    );
  }

  Future<bool> getLike(UuidValue postId) async {
    final post =
        _dummyPostsDigest.firstWhere((element) => element.id == postId);
    return post.isLiked;
  }

  Future<bool> toggleLike(UuidValue postId) async {
    final idx = _dummyPostsDigest.indexWhere((element) => element.id == postId);
    _dummyPostsDigest[idx] = (
      id: _dummyPostsDigest[idx].id,
      headline: _dummyPostsDigest[idx].headline,
      content: _dummyPostsDigest[idx].content,
      isLiked: !_dummyPostsDigest[idx].isLiked,
      creaedAt: _dummyPostsDigest[idx].creaedAt,
    );
    return _dummyPostsDigest[idx].isLiked;
  }
}
