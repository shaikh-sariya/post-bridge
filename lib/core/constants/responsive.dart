import 'package:post_bridge/core/constants/imports.dart';

/// Helper class for managing responsive design using the ScreenUtil package.
class AppResponsive {
  const AppResponsive._(); // Private constructor to prevent instantiation.

  /// Converts a given width value to its responsive equivalent.
  static double width(double value) {
    return ScreenUtil().setWidth(value);
  }

  /// Converts a given height value to its responsive equivalent.
  static double height(double value) {
    return ScreenUtil().setHeight(value);
  }

  /// Adjusts the font size based on the screen's pixel density for
  /// responsiveness.
  static double fontSize(double value) {
    return ScreenUtil().setSp(value);
  }

  /// Determines if the current screen width corresponds to a mobile device.
  static bool get isMobile => ScreenUtil().screenWidth < 600;

  /// Determines if the current screen width corresponds to a tablet device.
  static bool get isTablet =>
      ScreenUtil().screenWidth >= 600 && ScreenUtil().screenWidth < 1200;

  /// Determines if the current screen width corresponds to a desktop device.
  static bool get isDesktop => ScreenUtil().screenWidth >= 1200;
}
