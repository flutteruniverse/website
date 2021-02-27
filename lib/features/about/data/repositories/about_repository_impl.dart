import 'package:injectable/injectable.dart';

import '../../domain/entities/about.dart';
import '../../domain/repositories/about_repository.dart';
import '../datasources/about_datasource.dart';

@Injectable(as: AboutRepository)
class AboutRepositoryImpl implements AboutRepository {
  final AboutDatasource _datasource;

  AboutRepositoryImpl(this._datasource);

  @override
  About getInfo() {
    return _datasource.getInfo();
  }
}
