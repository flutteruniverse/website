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

    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        debugShowCheckedModeBanner: true,
        title: 'Universo Flutter | Debug',
        theme: themeData,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        builder: (context, child) => child ?? Container(),
      ),
    );
  }
}
