import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/news.dart';
import '../../domain/repositories/news_repository.dart';
import '../datasources/news_datasource.dart';

@Injectable(as: NewsRepository)
class NewsRepositoryImpl implements NewsRepository {
  final NewsDatasource _datasource;

  NewsRepositoryImpl(this._datasource);

  @override
  Future<List<NewsItem>> getAllNews() async {
    try {
      return await _datasource.getAllNews();
    } on Exception catch (e) {
      throw ErrorDescription('Error to get all news from datasource: $e');
    }
  }

  @override
  Future<void> getSourceNews() {
    // TODO: implement getSourceNews
    throw UnimplementedError();
  }
}
