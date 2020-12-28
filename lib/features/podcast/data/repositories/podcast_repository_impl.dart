import 'package:flutter/cupertino.dart';

import '../../domain/entities/episode.dart';
import '../../domain/repositories/podcast_repository.dart';
import '../datasources/podcast_datasource.dart';

class PodcastRepositoryImpl implements PodcastRepository {
  final PodcastDatasource _datasource;

  PodcastRepositoryImpl(this._datasource);

  @override
  Future<List<Episode>> getEpisodes(String showId) async {
    try {
      return await _datasource.getEpisodes(showId);
    } on Exception catch (e) {
      throw ErrorDescription('Error to get episode from datasource: $e');
    }
  }

  @override
  Future<void> getInfo(String showId) {
    throw UnimplementedError();
  }
}
