import '../entities/news.dart';
import '../repositories/news_repository.dart';

// ignore: one_member_abstracts
abstract class GetAllNews {
  Future<List<NewsItem>> call();
}

class GetAllNewsImpl implements GetAllNews {
  final NewsRepository repository;

  GetAllNewsImpl(this.repository);
  @override
  Future<List<NewsItem>> call() async {
    return await repository.getAllNews();
  }
}
