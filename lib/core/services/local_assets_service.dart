import 'package:flutter/services.dart' show rootBundle;

import 'package:injectable/injectable.dart';

@Injectable()
class LocalAssetsService {
  Future<String> getStreamingsJson(
      {String file = 'assets/json/streamings.json'}) async {
    final jsonData = await rootBundle.loadString(file);
    return jsonData;
  }
}
