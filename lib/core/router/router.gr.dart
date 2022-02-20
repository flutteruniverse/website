// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../features/podcast/presenter/pages/podcast_page.dart' as _i4;
import '../../features/settings/presenter/pages/settings.dart' as _i5;
import '../pages/home_page.dart' as _i3;
import '../pages/layout_page.dart' as _i1;
import '../pages/unknown_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LayoutRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.LayoutPage(),
          opaque: true,
          barrierDismissible: false);
    },
    UnknownRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.UnknownPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    PodcastRoute.name: (routeData) {
      final args = routeData.argsAs<PodcastRouteArgs>(
          orElse: () => const PodcastRouteArgs());
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.PodcastPage(key: args.key),
          opaque: true,
          barrierDismissible: false);
    },
    SettingsRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SettingsPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(LayoutRoute.name, path: '/', children: [
          _i6.RouteConfig(HomeRoute.name, path: '', parent: LayoutRoute.name),
          _i6.RouteConfig(PodcastRoute.name,
              path: 'podcast', parent: LayoutRoute.name),
          _i6.RouteConfig(SettingsRoute.name,
              path: 'settings', parent: LayoutRoute.name)
        ]),
        _i6.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

/// generated route for
/// [_i1.LayoutPage]
class LayoutRoute extends _i6.PageRouteInfo<void> {
  const LayoutRoute({List<_i6.PageRouteInfo>? children})
      : super(LayoutRoute.name, path: '/', initialChildren: children);

  static const String name = 'LayoutRoute';
}

/// generated route for
/// [_i2.UnknownPage]
class UnknownRoute extends _i6.PageRouteInfo<void> {
  const UnknownRoute() : super(UnknownRoute.name, path: '*');

  static const String name = 'UnknownRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.PodcastPage]
class PodcastRoute extends _i6.PageRouteInfo<PodcastRouteArgs> {
  PodcastRoute({_i7.Key? key})
      : super(PodcastRoute.name,
            path: 'podcast', args: PodcastRouteArgs(key: key));

  static const String name = 'PodcastRoute';
}

class PodcastRouteArgs {
  const PodcastRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'PodcastRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}
