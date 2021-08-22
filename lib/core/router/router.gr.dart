// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/podcast/presenter/pages/podcast_page.dart' as _i6;
import '../../features/settings/presenter/pages/settings.dart' as _i7;
import '../pages/home_page.dart' as _i5;
import '../pages/layout_page.dart' as _i3;
import '../pages/unknown_page.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState> navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LayoutRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.LayoutPage();
        },
        opaque: true,
        barrierDismissible: false),
    UnknownRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.UnknownPage();
        },
        opaque: true,
        barrierDismissible: false),
    HomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.HomePage();
        },
        opaque: true,
        barrierDismissible: false),
    PodcastRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PodcastRouteArgs>(
              orElse: () => const PodcastRouteArgs());
          return _i6.PodcastPage(key: args.key);
        },
        opaque: true,
        barrierDismissible: false),
    SettingsRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.SettingsPage();
        },
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LayoutRoute.name, path: '/', children: [
          _i1.RouteConfig(HomeRoute.name, path: ''),
          _i1.RouteConfig(PodcastRoute.name, path: 'podcast'),
          _i1.RouteConfig(SettingsRoute.name, path: 'settings')
        ]),
        _i1.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

class LayoutRoute extends _i1.PageRouteInfo {
  const LayoutRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'LayoutRoute';
}

class UnknownRoute extends _i1.PageRouteInfo {
  const UnknownRoute() : super(name, path: '*');

  static const String name = 'UnknownRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class PodcastRoute extends _i1.PageRouteInfo<PodcastRouteArgs> {
  PodcastRoute({_i2.Key key})
      : super(name, path: 'podcast', args: PodcastRouteArgs(key: key));

  static const String name = 'PodcastRoute';
}

class PodcastRouteArgs {
  const PodcastRouteArgs({this.key});

  final _i2.Key key;
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: 'settings');

  static const String name = 'SettingsRoute';
}
