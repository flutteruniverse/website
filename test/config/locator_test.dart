import 'package:flutter_test/flutter_test.dart';
import 'package:website/config/instance_factory.dart';
import 'package:website/config/locator.dart';
import 'package:website/features/news/domain/usecases/get_all_news.dart';

void main() {
  setupLocator();
  test('should injection data', () async {
    final usecase = InstanceFactory.get<GetAllNews>();

    expect(usecase, isA<GetAllNews>());
  });

  test('should no injection instance', () {
    expect(() => InstanceFactory.get<String>(), throwsAssertionError);
  });
}
