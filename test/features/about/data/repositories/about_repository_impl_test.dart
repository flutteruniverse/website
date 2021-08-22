import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/about/data/datasources/about_datasource.dart';
import 'package:website/features/about/data/models/about_model.dart';
import 'package:website/features/about/data/repositories/about_repository_impl.dart';

class AboutDatasourceMock extends Mock implements AboutDatasource {}

void main() {
  final datasource = AboutDatasourceMock();
  final repository = AboutRepositoryImpl(datasource);
  test('should return a about model', () async {
    when(datasource.getAbout('location')).thenAnswer((_) async => AboutModel());

    var aboutModel = await repository.getAbout('location');
    expect(aboutModel, isA<AboutModel>());
  });
}
