import 'dart:async';

import 'package:learn_flutter/models/search_result.dart';
import 'package:learn_flutter/server/github_cache.dart';
import 'package:learn_flutter/server/github_client.dart';

class GithubRepository {
  final GithubCache cache;
  final GithubClient client;

  GithubRepository(this.cache, this.client);

  Future<SearchResult> search(String term) async {
    if (cache.contains(term)) {
      return cache.get(term);
    } else {
      final result = await client.search(term);
      cache.set(term, result);
      return result;
    }
  }
}