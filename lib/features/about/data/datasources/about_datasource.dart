import '../models/about_model.dart';

abstract class AboutDatasource {
  Future<AboutModel> getAbout(String location);
}
