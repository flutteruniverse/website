import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'about': about,
      'social_media_list': socialMediaList?.map((x) => x?.toMap())?.toList(),
      'contact': contact?.toMap(),
      'creator': creator?.toMap(),
      'thanks_to': thanksTo?.map((x) => x?.toMap())?.toList(),
      'privacy_policy': privacyPolicy,
    };
  }

  factory AboutModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AboutModel(
      about: map['about'],
      socialMediaList: List<SocialMediaModel>.from(
          map['social_media_list']?.map((x) => SocialMediaModel.fromMap(x))),
      contact: ContactModel.fromMap(map['contact']),
      creator: CreatorModel.fromMap(map['creator']),
      thanksTo: List<ThanksToModel>.from(
          map['thanks_to']?.map((x) => ThanksToModel.fromMap(x))),
      privacyPolicy: map['privacy_policy'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AboutModel.fromJson(String source) =>
      AboutModel.fromMap(json.decode(source));
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

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
      'icon': icon,
    };
  }

  factory SocialMediaModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return SocialMediaModel(
      name: map['name'],
      url: map['url'],
      icon: map['icon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SocialMediaModel.fromJson(String source) =>
      SocialMediaModel.fromMap(json.decode(source));
}

class ContactModel extends Contact {
  ContactModel({this.name, this.url, this.icon, this.description});

  final String name;
  final String url;
  final String icon;
  final String description;

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
      'icon': icon,
      'description': description,
    };
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ContactModel(
      name: map['name'],
      url: map['url'],
      icon: map['icon'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactModel.fromJson(String source) =>
      ContactModel.fromMap(json.decode(source));
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

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'social_media_description': socialMediaDescription,
      'social_media_list': socialMediaList?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory CreatorModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CreatorModel(
      description: map['description'],
      socialMediaDescription: map['social_media_description'],
      socialMediaList: List<SocialMediaModel>.from(
          map['social_media_list']?.map((x) => SocialMediaModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CreatorModel.fromJson(String source) =>
      CreatorModel.fromMap(json.decode(source));
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

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
      'description': description,
    };
  }

  factory ThanksToModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ThanksToModel(
      name: map['name'],
      url: map['url'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ThanksToModel.fromJson(String source) =>
      ThanksToModel.fromMap(json.decode(source));
}
