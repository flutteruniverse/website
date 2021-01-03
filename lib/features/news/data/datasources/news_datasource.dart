import '../models/news_model.dart';

abstract class NewsDatasource {
  Future<List<NewsItemModel>> getAllNews();
  Future<void> getSourceNews();
}
