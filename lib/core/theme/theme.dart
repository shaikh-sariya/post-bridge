/// File: theme.dart
/// Description: Class responsible for defining the overall theme of the
/// application.
library;

// Package imports
import 'package:post_bridge/core/constants/imports.dart';

/// Class responsible for defining the overall theme of the application.
class AppTheme {
  const AppTheme._();

  /// The primary theme configuration for the application.
  static final theme = ThemeData(
    // Seed color for the color scheme.
    colorSchemeSeed: AppColors.primary,

    // Enable Material 3 design principles.
    useMaterial3: true,

    // Text theme configuration.
    textTheme: AppTextTheme.textTheme,
  );
}
