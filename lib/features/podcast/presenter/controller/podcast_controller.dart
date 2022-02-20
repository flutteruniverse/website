import 'package:flutter/cupertino.dart';

import '../../../../config/instance_factory.dart';
import '../../domain/entities/episode.dart';
import '../../domain/entities/podcast_info.dart';
import '../../domain/usecases/get_episodes.dart';
import '../../domain/usecases/get_info.dart';

class PodcastController {
  final episodesList = ValueNotifier<List<Episode>>([]);
  final streamming =
      ValueNotifier<PodcastInfo>(PodcastInfo(streamingServices: []));
  final GetEpisodes _getEpisodes = InstanceFactory.get<GetEpisodes>();
  final GetInfo _getInfo = InstanceFactory.get<GetInfo>();
  bool get loadingEpisodes => _loadingEpisodes;
  bool get loadingInfo => _loadingInfo;

  bool _loadingEpisodes = true;
  bool _loadingInfo = true;

  void getPageData() async {
    _loadingInfo = true;
    streamming.value = await _getInfo('assets/json/streamings.json');
    _loadingInfo = false;
    await getListEpisodes();
  }

  Future<void> getListEpisodes() async {
    _loadingEpisodes = true;
    episodesList.value = await _getEpisodes('4AlxqGkkrqe0mfIx3Mi7Xt');
    _loadingEpisodes = false;
  }
}
