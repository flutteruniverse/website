import '../../domain/entities/about.dart';

class AboutModel extends About {
  AboutModel({
    this.about,
    this.socialMediaList,
    this.contact,
    this.creator,
    this.thanksTo,
    this.privacyPolicy,
  });

  final String about;
  final List<SocialMediaModel> socialMediaList;
  final ContactModel contact;
  final CreatorModel creator;
  final List<ThanksToModel> thanksTo;
  final String privacyPolicy;
}

class SocialMediaModel extends SocialMedia {
  SocialMediaModel({
    this.name,
    this.url,
    this.icon,
  });

  final String name;
  final String url;
  final String icon;
}

class ContactModel extends Contact {
  ContactModel({
    this.name,
    this.url,
    this.icon,
  });

  final String name;
  final String url;
  final String icon;
}

class CreatorModel extends Creator {
  CreatorModel({
    this.description,
    this.socialMediaDescription,
    this.socialMediaList,
  });

  final String description;
  final String socialMediaDescription;
  final List<SocialMediaModel> socialMediaList;
}

class ThanksToModel extends ThanksTo {
  ThanksToModel({
    this.name,
    this.url,
    this.description,
  });

  final String name;
  final String url;
  final String description;
}
