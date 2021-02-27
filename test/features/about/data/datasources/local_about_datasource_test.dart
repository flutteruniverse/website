import 'package:flutter_test/flutter_test.dart';
import 'package:website/features/about/data/datasources/local_about_datasource.dart';
import 'package:website/features/about/data/models/about_model.dart';

void main() {
  final datasource = LocalAboutDatasource();
  test('should return a about model', () async {
    var aboutModel = datasource.getInfo();
    expect(aboutModel, isA<AboutModel>());
  });
}
