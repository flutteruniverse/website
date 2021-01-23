import 'package:flutter/material.dart';

import '../../features/podcast/presenter/pages/podcast_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PodcastPage();
  }
}
