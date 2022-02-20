import 'package:flutter/material.dart';

import '../../../../core/router/router.dart';
import '../../../../core/widgets/responsive_list.dart';
import '../../../../shared/widgets/loading.dart';
import '../../domain/entities/episode.dart';
import '../controller/podcast_controller.dart';
import 'episode_card.dart';

class PodcastHomeList extends StatefulWidget {
  const PodcastHomeList({Key? key}) : super(key: key);

  @override
  _PodcastHomeListState createState() => _PodcastHomeListState();
}

class _PodcastHomeListState extends State<PodcastHomeList> {
  final PodcastController _pageController = PodcastController();

  @override
  void initState() {
    super.initState();
    _pageController.getListEpisodes();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Episode>>(
      valueListenable: _pageController.episodesList,
      builder: (context, value, child) {
        return LoadingWidget(
          loading: _pageController.loadingEpisodes,
          child: ResponsiveList(
            title: 'Podcast',
            pageToNavigate: PodcastRoute(),
            list: value
                .map((episodeItem) => EpisodeCard(
                      episodeItem: episodeItem,
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}
