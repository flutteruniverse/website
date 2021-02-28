import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/about.dart';
import '../../domain/repositories/about_repository.dart';
import '../datasources/about_datasource.dart';

@Injectable(as: AboutRepository)
class AboutRepositoryImpl implements AboutRepository {
  final AboutDatasource _datasource;

  AboutRepositoryImpl(this._datasource);

  @override
  Future<About> getInfo(String location) async {
    try {
      return await _datasource.getInfo(location);
    } on Exception catch (e) {
      throw ErrorDescription('Error to get about info from datasource: $e');
    }
  }
}
