import 'package:auto_route/auto_route.dart';

import '../../features/podcast/presenter/pages/podcast_page.dart';
import '../../features/settings/presenter/pages/settings.dart';
import '../pages/home_page.dart';
import '../pages/layout_page.dart';
import '../pages/unknown_page.dart';

export 'router.gr.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: LayoutPage,
      initial: true,
      children: [
        AutoRoute(path: '', page: HomePage),
        AutoRoute(path: 'podcast', page: PodcastPage),
        AutoRoute(path: 'settings', page: SettingsPage),
      ],
    ),
    AutoRoute(path: '*', page: UnknownPage),
  ],
)
class $AppRouter {}
