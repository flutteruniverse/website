import 'package:flutter_alien/flutter_alien.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/news/data/datasources/online_news_datasource.dart';
import 'package:website/features/news/data/models/news_model.dart';

class SocialServiceMock extends Mock implements SocialService {}

void main() {
  final socialService = SocialServiceMock();
  final repository = OnlineNewsDatasource(socialService);
  test('should return ordered news', () async {
    when(socialService.getGithubReleases('flutter', 'flutter')).thenAnswer(
        (_) async => GithubRepository(title: 'github', releases: <Release>[
              Release(
                link: 'https',
                version: '0.1.0',
                updated: DateTime.now(),
              )
            ]));
    when(socialService.getYoutubeFeed('UCwXdFgeE9KYzlDdR7TG9cMw')).thenAnswer(
        (_) async =>
            YoutubeChannel(title: 'youtube', youtubePosts: <YoutubePost>[
              YoutubePost(
                link: 'https',
                title: 'youtube post',
                pubDate: DateTime.now(),
              )
            ]));
    when(socialService.getMediumFeed('flutter')).thenAnswer((_) async =>
        MediumChannel(title: 'medium flutter', mediumPosts: <MediumPost>[
          MediumPost(
            link: 'https',
            title: 'medium post flutter',
            pubDate: DateTime.now(),
          )
        ]));
    when(socialService.getMediumFeed('dartlang')).thenAnswer((_) async =>
        MediumChannel(title: 'medium dart', mediumPosts: <MediumPost>[
          MediumPost(
            link: 'https',
            title: 'medium post dart',
            pubDate: DateTime.now(),
          )
        ]));

    var news = await repository.getAllNews();

    expect(news, isA<List<NewsItemModel>>());
    for (var newsItem in news) {
      expect(newsItem.title, isNotEmpty);
      expect(newsItem.link, isNotEmpty);
    }
    expect(news[0].type, 'medium dart');
    expect(news[1].type, 'medium flutter');
    expect(news[2].type, 'youtube');
    expect(news[3].type, 'github');
  });
}
