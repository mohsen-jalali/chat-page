import 'package:flutter/material.dart';
import 'package:gamer_tag/src/presentation/ui/theme/colors.dart';

class GamerTagThemes {
  static const String fontFamily = "Poppins";

  static ThemeData lightTheme = ThemeData(
    primaryColor: PrimaryColor.light,
    scaffoldBackgroundColor: SurfaceColor.light,
    colorScheme: const ColorScheme.light(
      primary: PrimaryColor.light,
      secondary: SecondaryColor.light,
      tertiary: TertiaryColor.light,
      tertiaryContainer: TertiaryContainerColor.light,
      error: ErrorColor.light,
      onError: OnErrorColor.light,
      surface: SurfaceColor.light,
      onSurface: OnSurfaceColor.light,
      surfaceContainer: SurfaceContainerColor.light,
    ),
    fontFamily: fontFamily,
    dividerColor: SurfaceColor.light,
    hintColor: TertiaryContainerColor.light,
    brightness: Brightness.light,
    dividerTheme: DividerThemeData(
      color: SurfaceColor.light.withOpacity(0.16),
      thickness: 1,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 20,
        color: TertiaryColor.light,
        fontFamily: fontFamily,
        fontFamilyFallback: [
          fontFamily,
        ],
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 18,
        color: TertiaryColor.light,
        fontFamily: fontFamily,
        fontFamilyFallback: [
          fontFamily,
        ],
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: TertiaryColor.light,
        fontFamily: fontFamily,
        fontFamilyFallback: [
          fontFamily,
        ],
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: TertiaryColor.light,
        fontFamily: fontFamily,
        fontFamilyFallback: [
          fontFamily,
        ],
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 14,
        color: TertiaryColor.light,
        fontFamily: fontFamily,
        fontFamilyFallback: [
          fontFamily,
        ],
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 12,
        color: TertiaryColor.light,
        fontFamily: fontFamily,
        fontFamilyFallback: [
          fontFamily,
        ],
      ),
    ),
  );
}
