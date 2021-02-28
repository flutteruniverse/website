import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/core/services/local_assets_service.dart';
import 'package:website/features/about/data/datasources/local_about_datasource.dart';
import 'package:website/features/about/data/models/about_model.dart';

class LocalAssetsServiceMock extends Mock implements LocalAssetsService {}

void main() {
  final localAssetsService = LocalAssetsServiceMock();
  final datasource = LocalAboutDatasource(localAssetsService);
  test('should return a about model', () async {
    when(localAssetsService.getJson(file: 'location')).thenAnswer((_) async =>
        Future.value('{\"social_media_list\":[], \"thanks_to\": []}'));

    var aboutModel = await datasource.getInfo('location');
    expect(aboutModel, isA<AboutModel>());
  });
}
