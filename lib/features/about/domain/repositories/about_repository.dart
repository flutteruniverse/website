import '../entities/about.dart';

abstract class AboutRepository {
  Future<About> getInfo(String location);
}
