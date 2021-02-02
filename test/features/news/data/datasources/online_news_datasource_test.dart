import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/news/domain/entities/news.dart';
import 'package:website/features/news/domain/repositories/news_repository.dart';
import 'package:website/features/news/domain/usecases/get_all_news.dart';

class NewsRepositoryMock extends Mock implements NewsRepository {}

void main() {
  final repository = NewsRepositoryMock();
  final usecase = GetAllNewsImpl(repository);
  test('shoud return a all news when call', () async {
    when(repository.getAllNews()).thenAnswer((_) async => <NewsItem>[]);

    var news = await usecase();

    expect(news, isA<List<NewsItem>>());
  });
}
