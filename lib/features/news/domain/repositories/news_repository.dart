import '../entities/news.dart';

abstract class NewsRepository {
  Future<List<NewsItem>> getAllNews();
  Future<void> getSourceNews();
}
