import 'package:myminipod_client/myminipod_client.dart';
import 'package:myminipod_flutter/data/data_loader.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'client.dart';

part 'get_like.g.dart';

@riverpod
DataLoader<UuidValue, bool> getLike(GetLikeRef ref) {
  final client = ref.watch(clientProvider);
  return DataLoader<UuidValue, bool>(onFetch: (postIds) {
    return client.posts.getLikes(postIds);
  });
}
