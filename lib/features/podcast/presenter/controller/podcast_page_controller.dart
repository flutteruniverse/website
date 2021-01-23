import 'package:flutter/cupertino.dart';

import '../../../../config/instance_factory.dart';
import '../../domain/entities/episode.dart';
import '../../domain/usecases/get_episodes.dart';

class PodcastPageController {
  final episodesList = ValueNotifier<List<Episode>>([]);
  final GetEpisodes _getEpisodes = InstanceFactory.get<GetEpisodes>();

  void getListEpisodes() async {
    episodesList.value = await _getEpisodes('4AlxqGkkrqe0mfIx3Mi7Xt');
  }
}
