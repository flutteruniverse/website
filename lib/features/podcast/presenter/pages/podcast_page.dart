import 'package:flutter/material.dart';

import '../../../../core/widgets/responsive_list.dart';
import '../../../../shared/utils.dart';
import '../../../../shared/widgets/loading.dart';
import '../../domain/entities/episode.dart';
import '../../domain/entities/podcast_info.dart';
import '../controller/podcast_controller.dart';
import '../widgets/episode_card.dart';

class PodcastPage extends StatefulWidget {
  PodcastPage({Key? key}) : super(key: key);

  @override
  _PodcastPageState createState() => _PodcastPageState();
}

class _PodcastPageState extends State<PodcastPage> {
  final PodcastController _pageController = PodcastController();

  @override
  void initState() {
    super.initState();
    _pageController.getPageData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveList(title: 'Where to listen', list: [
          Card(
            child: Center(
              child: ValueListenableBuilder<PodcastInfo>(
                valueListenable: _pageController.streamming,
                builder: (context, value, snapshot) {
                  return LoadingWidget(
                    loading: _pageController.loadingInfo,
                    child: Wrap(
                      runSpacing: 16.0,
                      spacing: 16.0,
                      children: value.streamingServices
                          .map((streaming) => IconButton(
                                icon: Image.asset(
                                  streaming.imagePath,
                                  semanticLabel: streaming.title,
                                ),
                                onPressed: () => openLink(streaming.url),
                                tooltip: streaming.title,
                              ))
                          .toList(),
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
        Expanded(
          child: ValueListenableBuilder<List<Episode>>(
            valueListenable: _pageController.episodesList,
            builder: (context, value, child) {
              return LoadingWidget(
                loading: _pageController.loadingEpisodes,
                child: ResponsiveList(
                  title: 'Episodes',
                  list: value
                      .map((episodeItem) => EpisodeCard(
                            episodeItem: episodeItem,
                          ))
                      .toList(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
