import 'dart:async';

import 'package:flutter_alien/flutter_alien.dart';
import 'package:injectable/injectable.dart';

import '../models/news_model.dart';
import 'news_datasource.dart';

@Injectable(as: NewsDatasource)
class OnlineNewsDatasource implements NewsDatasource {
  final SocialService _socialService;

  OnlineNewsDatasource(this._socialService);

  /// Get all news from this sources:
  /// - Flutter github repository
  /// - Flutter Medium
  /// - Dart Medium
  /// - Flutter Youtube channel
  /// And put in unique list, order by ascendant date
  @override
  Future<List<NewsItemModel>> getAllNews() async {
    _socialService.init();
    final githubReleases =
        await _socialService.getGithubReleases('flutter', 'flutter');
    final mediumPostsDart = await _socialService.getMediumFeed('dartlang');
    final mediumPostsFlutter = await _socialService.getMediumFeed('flutter');
    final youtubeVideos =
        await _socialService.getYoutubeFeed('UCwXdFgeE9KYzlDdR7TG9cMw');

    var list = <NewsItemModel>[];
    list.addAll(githubReleases.releases
        .map((e) => NewsItemModel(
            title: e.version,
            link: e.link,
            type: githubReleases.title,
            pubDate: e.updated))
        .toList());
    list.addAll(
      _parsingPosts(mediumPostsDart.mediumPosts, mediumPostsDart.title),
    );
    list.addAll(
      _parsingPosts(mediumPostsFlutter.mediumPosts, mediumPostsFlutter.title),
    );
    list.addAll(_parsingPosts(youtubeVideos.youtubePosts, youtubeVideos.title));

    list.sort((a, b) => b.pubDate.compareTo(a.pubDate));
    return Future.value(list);
  }

  @override
  Future<void> getSourceNews() {
    // TODO: implement getSourceNews
    throw UnimplementedError();
  }

  List<NewsItemModel> _parsingPosts(List posts, String title) {
    return posts
        .map((e) => NewsItemModel(
              title: e.title,
              link: e.link,
              pubDate: e.pubDate,
              type: title,
            ))
        .toList();
  }
}
