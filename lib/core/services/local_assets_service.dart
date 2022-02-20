import 'package:flutter/services.dart' show rootBundle;

import 'package:injectable/injectable.dart';

@Injectable()
class LocalAssetsService {
  Future<String> getJson({required String file}) async {
    final jsonData = await rootBundle.loadString(file);
    return jsonData;
  }
}
