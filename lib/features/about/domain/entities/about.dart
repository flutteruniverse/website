class About {
  About({
    this.about = '',
    this.socialMediaList = const [],
    required this.contact,
    required this.creator,
    this.thanksTo = const [],
    this.privacyPolicy = '',
  });

  final String about;
  final List<SocialMedia> socialMediaList;
  final Contact contact;
  final Creator creator;
  final List<ThanksTo> thanksTo;
  final String privacyPolicy;
}

class SocialMedia {
  SocialMedia({
    this.name = '',
    this.url = '',
    this.icon = '',
  });

  final String name;
  final String url;
  final String icon;
}

class Contact {
  Contact({
    this.name = '',
    this.url = '',
    this.icon = '',
    this.description = '',
  });

  final String name;
  final String url;
  final String icon;
  final String description;
}

class Creator {
  Creator({
    this.description = '',
    this.socialMediaDescription = '',
    this.socialMediaList = const [],
  });

  final String description;
  final String socialMediaDescription;
  final List<SocialMedia> socialMediaList;
}

class ThanksTo {
  ThanksTo({
    this.name = '',
    this.url = '',
    this.description = '',
  });

  final String name;
  final String url;
  final String description;
}
