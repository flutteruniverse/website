import 'package:auto_route/auto_route.dart';

import '../../features/settings/presenter/pages/settings.dart';
import '../pages/home_page.dart';
import '../pages/unknown_page.dart';

export 'router.gr.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(path: 'settings', page: SettingsPage),
      ],
    ),
    AutoRoute(path: '*', page: UnknownPage),
  ],
)
class $AppRouter {}
