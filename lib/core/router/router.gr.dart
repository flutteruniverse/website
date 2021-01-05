// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../pages/home_page.dart' as _i2;
import '../pages/unknown_page.dart' as _i3;
import '../../features/settings/presenter/pages/settings.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.CustomPage(entry: entry, child: _i2.HomePage());
    },
    UnknownRoute.name: (entry) {
      return _i1.CustomPage(entry: entry, child: _i3.UnknownPage());
    },
    SettingsRoute.name: (entry) {
      return _i1.CustomPage(entry: entry, child: const _i4.SettingsPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<HomeRoute>(HomeRoute.name,
            path: '/',
            routeBuilder: (match) => HomeRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<SettingsRoute>(SettingsRoute.name,
                  path: 'settings',
                  routeBuilder: (match) => SettingsRoute.fromMatch(match))
            ]),
        _i1.RouteConfig<UnknownRoute>(UnknownRoute.name,
            path: '*', routeBuilder: (match) => UnknownRoute.fromMatch(match))
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/', initialChildren: children);

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class UnknownRoute extends _i1.PageRouteInfo {
  const UnknownRoute() : super(name, path: '*');

  UnknownRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'UnknownRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: 'settings');

  SettingsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SettingsRoute';
}
