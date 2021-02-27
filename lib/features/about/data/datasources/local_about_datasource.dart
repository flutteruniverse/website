import 'package:injectable/injectable.dart';

import '../models/about_model.dart';
import 'about_datasource.dart';

@Injectable(as: AboutDatasource)
class LocalAboutDatasource implements AboutDatasource {
  @override
  AboutModel getInfo() {
    return AboutModel(
        about: '',
        contact: ContactModel(
          icon: '',
          name: 'email',
          url: 'mailto:universoflutter@gmail.com',
        ),
        creator: CreatorModel(
          description: 'Matias de Andrea',
          socialMediaDescription: 'Follow in:',
          socialMediaList: [
            SocialMediaModel(
                icon: '',
                name: 'twitter',
                url: 'https://twitter.com/deandreamatias')
          ],
        ),
        privacyPolicy: '',
        socialMediaList: [
          SocialMediaModel(
              icon: '',
              name: 'twitter',
              url: 'https://twitter.com/universoflutter')
        ],
        thanksTo: [
          ThanksToModel(
            description: 'font used to Universo Flutter identity',
            url: 'https://www.latofonts.com/',
            name: 'lato font',
          ),
        ]);
  }
}
