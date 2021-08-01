import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'config/locator.dart';
import 'core/router/router.dart';
import 'core/theme.dart';

Future<void> main() async {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return LayoutBuilder(
      builder: (context, constraints) =>
          Sizer(builder: (context, orientation, deviceType) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return MaterialApp.router(
              title: '''Universo Flutter | 
                    Where you find news and knowledge about Flutter''',
              theme: themeData,
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
              builder: (context, child) => child,
            );
          },
        );
      }),
    );
  }
}
