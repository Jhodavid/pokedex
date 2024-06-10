
enum AppRoutesEnum {
  home,
  detail
}

extension AppRoutesEnumExtension on AppRoutesEnum {
  String get path {
    switch (this) {
      case AppRoutesEnum.home: return '/';
      case AppRoutesEnum.detail: return '/:name';
    }
  }
}