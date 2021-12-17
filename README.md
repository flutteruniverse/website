# Universo Flutter website

Where you find news and knowledge about Flutter

[![Test app](https://github.com/flutteruniverse/website/workflows/Test%20app/badge.svg)](https://github.com/flutteruniverse/website/actions?query=workflow%3A%22Test+app%22)
[![Deploy app](https://github.com/flutteruniverse/website/workflows/Deploy%20app/badge.svg)](https://github.com/flutteruniverse/website/actions?query=workflow%3A%22Deploy+app%22)
[![Releases](https://img.shields.io/github/v/release/flutteruniverse/website)](https://github.com/flutteruniverse/website/releases)
[![Website online](https://img.shields.io/website?up_message=online&url=https%3A%2F%2Funiversoflutter.com)](https://universoflutter.com)
[![Paypal donate](https://img.shields.io/badge/paypal-donate-blue)](https://paypal.me/deandreamatias)

## About the project

This website is building to share podcast [Universo Flutter](https://anchor.fm/universoflutter), news, resources and all about Flutter.

This project has been built using the [Flutter](https://flutter.dev/) framework, which allows to build an multiplatform app from a single codebase.

## Roadmap 2021

- [x] Create podcast page
- [ ] Create about page
- [ ] Create resource page
- [ ] Develop news integration
- [ ] Implement news feature and page
- [ ] Translate website to spanish and portuguese (more languanges are welcome)
- [ ] Implement search feature and page
- [ ] Implement settings featuare and page

**Roadmap in [public Trello](https://trello.com/b/eKsVAvyv)**

## Build and run

### Requirements

1. Clone repository with 'git clone' command or just download the zip. `git clone git@github.com:flutteruniverse/website.git`
2. Then, download either Android Studio or Visual Studio Code, with their respective [Flutter editor plugins](https://flutter.dev/docs/get-started/editor). For more information about Flutter installation procedure, check the [official install guide](https://flutter.dev/docs/get-started/install).
3. Install dependencies from pubspec.yaml by running `flutter pub get` from the project root (see [using packages documentation](https://flutter.dev/docs/development/packages-and-plugins/using-packages#adding-a-package-dependency-to-an-app) for details and how to do this in the editor).
4. Create env.dart file running `dart run .tool/env_service.dart` and add your personal keys from differents source. Use keys from:
   1. Spotify
5. Finally, config firebase to [Web installation](https://firebase.flutter.dev/docs/installation/web).
You need add your own file `firebase_config.js` into web folder with Firebase config, code below.

```javascript
var firebaseConfig = {
    apiKey: "...",
    authDomain: "[YOUR_PROJECT].firebaseapp.com",
    databaseURL: "https://[YOUR_PROJECT].firebaseio.com",
    projectId: "[YOUR_PROJECT]",
    storageBucket: "[YOUR_PROJECT].appspot.com",
    messagingSenderId: "...",
    appId: "1:...:web:...",
    measurementId: "G-...",
};
firebase.initializeApp(firebaseConfig);
```

### Run

CLI Debug: `flutter run -t lib/main_dev.dart`

### Tests

Unit tests: `flutter test --flavor dev`

## Built with

- [Flutter](https://flutter.dev/) - Build apps for any screen.
- [Visual Studio Code](https://code.visualstudio.com/) - Code editing. Redefined.

## Author

- **Matias de Andrea** - Mobile developer: [Website](https://deandreamatias.com), [GitHub](https://github.com/deandreamatias) and [Twitter](https://twitter.com/deandreamatias).

## Contributing

If you want to take the time to make this project better, please read the [contributing guides](https://github.com/flutteruniverse/website/blob/master/CONTRIBUTING.md) first. Then, you can open an new [issue](https://github.com/flutteruniverse/website/issues/new/choose), of a [pull request](https://github.com/flutteruniverse/website/compare).

## License

This project is licensed under the GNU GPL v3 License - see the [LICENSE](LICENSE) file for details.
