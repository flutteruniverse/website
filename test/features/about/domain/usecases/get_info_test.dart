import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/about/domain/entities/about.dart';
import 'package:website/features/about/domain/repositories/about_repository.dart';
import 'package:website/features/about/domain/usecases/get_about.dart';

class AboutRepositoryMock extends Mock implements AboutRepository {}

void main() {
  final repository = AboutRepositoryMock();
  final usecase = GetAboutImpl(repository);
  test('shoud return a info about when call usecase', () async {
    when(repository.getAbout('location')).thenAnswer((_) async => About(
          creator: Creator(),
          contact: Contact(),
        ));

    var info = await usecase('location');

    expect(info, isA<About>());
  });
}
