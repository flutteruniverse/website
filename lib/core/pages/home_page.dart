import 'package:flutter/material.dart';
import '../../features/podcast/presenter/widgets/podcast_home_list.dart';
import '../widgets/main_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainHeader(),
        const SizedBox(height: 8.0),
        Expanded(child: PodcastHomeList()),
      ],
    );
  }
}
