import 'package:flutter_test/flutter_test.dart';
import 'package:website/config/instance_factory.dart';
import 'package:website/config/locator.dart';
import 'package:website/features/podcast/domain/usecases/get_episodes.dart';

void main() {
  setupLocator();
  test('should injection data', () async {
    final usecase = InstanceFactory.get<GetEpisodes>();

    expect(usecase, isA<GetEpisodes>());
  });

  test('should no injection instance', () {
    expect(() => InstanceFactory.get<String>(), throwsAssertionError);
  });
}
