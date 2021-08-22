import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openLink(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
    log('Launched: $url');
    return;
  }
  throw 'Could not launch $url';
}

Future<void> openApp(String url) async {
  try {
    await launch(url);
    log('Launched: $url');
  } on Exception catch (e) {
    throw 'Could not launch $url because $e';
  }
}

bool isExtraSmallScreen(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.portrait &&
          MediaQuery.of(context).size.width < 600 ||
      MediaQuery.of(context).orientation == Orientation.landscape &&
          MediaQuery.of(context).size.height < 600;
}
