import 'package:post_bridge/core/constants/imports.dart';

/// Extension for providing additional functionality to the PAGES enum.
extension AppPageExtension on PAGES {
  /// Returns the route path associated with the page.
  String get screenPath {
    switch (this) {
      case PAGES.home:
        return '/';
      case PAGES.text:
        return '/text';
      case PAGES.video:
        return '/video';
      case PAGES.image:
        return '/image';
    }
  }

  /// Returns the screen name associated with the page.
  String get screenName {
    switch (this) {
      case PAGES.home:
        return 'HOME';
      case PAGES.text:
        return 'TEXT';
      case PAGES.video:
        return 'VIDEO';
      case PAGES.image:
        return 'IMAGE';
    }
  }

  /// Returns the screen title associated with the page.
  String get screenTitle {
    switch (this) {
      case PAGES.home:
        return 'Home';
      case PAGES.text:
        return 'Text';
      case PAGES.video:
        return 'Video';
      case PAGES.image:
        return 'Image';
    }
  }
}
