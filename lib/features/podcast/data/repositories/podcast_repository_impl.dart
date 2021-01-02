import 'package:flutter/cupertino.dart';

import '../../domain/repositories/podcast_repository.dart';
import '../datasources/podcast_datasource.dart';
import '../models/episode_model.dart';
import '../models/episode_references_model.dart';
import '../models/podcast_info_model.dart';

class PodcastRepositoryImpl implements PodcastRepository {
  final PodcastDatasource _datasource;

  PodcastRepositoryImpl(this._datasource);

  @override
  Future<List<EpisodeModel>> getEpisodes(String showId) async {
    try {
      return await _datasource.getEpisodes(showId);
    } on Exception catch (e) {
      throw ErrorDescription('Error to get episode from datasource: $e');
    }
  }

  @override
  Future<List<EpisodeReferencesModel>> getEpisodesReferences(
      String location) async {
    try {
      return await _datasource.getEpisodesReferences(location);
    } on Exception catch (e) {
      throw ErrorDescription(
          'Error to get episodes references from datasource: $e');
    }
  }

  @override
  Future<PodcastInfoModel> getPodcastInfo(String location) async {
    try {
      return await _datasource.getPodcastInfo(location);
    } on Exception catch (e) {
      throw ErrorDescription('Error to get podcast info from datasource: $e');
    }
  }
}
