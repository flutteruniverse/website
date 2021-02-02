// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../pages/layout_page.dart' as _i2;
import '../pages/unknown_page.dart' as _i3;
import '../pages/home_page.dart' as _i4;
import '../../features/settings/presenter/pages/settings.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LayoutRoute.name: (entry) {
      return _i1.CustomPage(entry: entry, child: _i2.LayoutPage());
    },
    UnknownRoute.name: (entry) {
      return _i1.CustomPage(entry: entry, child: _i3.UnknownPage());
    },
    HomeRoute.name: (entry) {
      return _i1.CustomPage(entry: entry, child: const _i4.HomePage());
    },
    SettingsRoute.name: (entry) {
      return _i1.CustomPage(entry: entry, child: const _i5.SettingsPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<LayoutRoute>(LayoutRoute.name,
            path: '/',
            routeBuilder: (match) => LayoutRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<HomeRoute>(HomeRoute.name,
                  path: '',
                  routeBuilder: (match) => HomeRoute.fromMatch(match)),
              _i1.RouteConfig<SettingsRoute>(SettingsRoute.name,
                  path: 'settings',
                  routeBuilder: (match) => SettingsRoute.fromMatch(match))
            ]),
        _i1.RouteConfig<UnknownRoute>(UnknownRoute.name,
            path: '*', routeBuilder: (match) => UnknownRoute.fromMatch(match))
      ];
}

class LayoutRoute extends _i1.PageRouteInfo {
  const LayoutRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/', initialChildren: children);

  LayoutRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'LayoutRoute';
}

class UnknownRoute extends _i1.PageRouteInfo {
  const UnknownRoute() : super(name, path: '*');

  UnknownRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'UnknownRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: 'settings');

  SettingsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SettingsRoute';
}
