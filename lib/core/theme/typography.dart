import 'package:post_bridge/core/constants/imports.dart';

/// Class defining the text theme for the application using Google Fonts.
class AppTextTheme {
  const AppTextTheme._();

  /// Text theme configuration with various font styles and sizes.
  static final textTheme = TextTheme(
    // Large display text style.
    displayLarge: GoogleFonts.inter(
      fontSize: 57,
      height: 64 / 57,
      letterSpacing: -0.25,
    ),

    // Medium display text style.
    displayMedium: GoogleFonts.inter(
      fontSize: 45,
      height: 52 / 45,
    ),

    // Small display text style.
    displaySmall: GoogleFonts.inter(
      fontSize: 36,
      height: 44 / 36,
    ),

    // Large headline text style with bold font weight.
    headlineLarge: GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 32,
      height: 40 / 32,
    ),

    // Medium headline text style.
    headlineMedium: GoogleFonts.inter(
      fontSize: 28,
      height: 36 / 28,
    ),

    // Small headline text style.
    headlineSmall: GoogleFonts.inter(
      fontSize: 24,
      height: 32 / 24,
    ),

    // Large title text style.
    titleLarge: GoogleFonts.inter(
      fontSize: 22,
      height: 28 / 22,
    ),

    // Medium title text style with a slight letter-spacing.
    titleMedium: GoogleFonts.inter(
      fontSize: 16,
      height: 24 / 16,
      letterSpacing: 0.1,
    ),

    // Small title text style with a slight letter-spacing.
    titleSmall: GoogleFonts.inter(
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0.1,
    ),

    // Large label text style.
    labelLarge: GoogleFonts.inter(
      fontSize: 14,
      height: 20 / 14,
    ),

    // Medium label text style.
    labelMedium: GoogleFonts.inter(
      fontSize: 12,
      height: 16 / 12,
    ),

    // Small label text style.
    labelSmall: GoogleFonts.inter(
      fontSize: 11,
      height: 16 / 11,
    ),

    // Large body text style.
    bodyLarge: GoogleFonts.inter(
      fontSize: 13,
      height: 24 / 16,
    ),

    // Medium body text style.
    bodyMedium: GoogleFonts.inter(
      fontSize: 12,
      height: 20 / 14,
    ),

    // Small body text style.
    bodySmall: GoogleFonts.inter(
      fontSize: 12,
      height: 16 / 12,
    ),
  );
}
