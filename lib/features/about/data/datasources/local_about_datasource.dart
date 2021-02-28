import 'package:injectable/injectable.dart';

import '../../../../core/services/local_assets_service.dart';
import '../models/about_model.dart';
import 'about_datasource.dart';

@Injectable(as: AboutDatasource)
class LocalAboutDatasource implements AboutDatasource {
  final LocalAssetsService _localAssetsService;

  LocalAboutDatasource(
    this._localAssetsService,
  );
  @override
  Future<AboutModel> getInfo(String location) async {
    try {
      final about = await _localAssetsService.getJson(file: location);
      return AboutModel.fromJson(about);
    } on Exception catch (e) {
      throw UnimplementedError('Error to get about info: $e');
    }
  }
}
