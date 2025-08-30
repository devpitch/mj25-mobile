import 'package:event_handler/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyAppThemes {
  static final lightTheme = ThemeData(
    primaryColor: ThemeColors.contentPrimary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeColors.backgroundPrimary,
      foregroundColor: ThemeColors.black,
      elevation: 0,
    ),
    scaffoldBackgroundColor: ThemeColors.backgroundPrimary,
    indicatorColor: ThemeColors.contentPrimary,
    disabledColor: ThemeColors.contentSecondary,
    hintColor: ThemeColors.contentTertiary,
    cardColor: ThemeColors.contentDisabled,
    shadowColor: ThemeColors.contentBrand,
    splashColor: ThemeColors.contentLink,
    dividerColor: ThemeColors.contentNegative,
    secondaryHeaderColor: ThemeColors.contentWarning,
    hoverColor: ThemeColors.contentPositive,
    highlightColor: ThemeColors.backgroundSecondary,
    canvasColor: ThemeColors.backgroundDisabled,
    focusColor: ThemeColors.backgroundBrand,
    unselectedWidgetColor: ThemeColors.backgroundBrandSubtitle,
    primaryColorDark: ThemeColors.backgroundNegativeSubtitle,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.backgroundWarningSubtitle,
      onPrimary: ThemeColors.backgroundPositiveSubtitle,
      secondary: ThemeColors.borderPrimary,
      onSecondary: ThemeColors.borderSecondary,
      error: ThemeColors.iconGreyColor,
      onError: ThemeColors.borderTetirary,
      surface: ThemeColors.borderDisabled,
      onSurface: ThemeColors.borderBrand,
      primaryContainer: ThemeColors.borderBrandPositive,
      onPrimaryContainer: ThemeColors.borderBrandWarning,
      secondaryContainer: ThemeColors.borderBrandNegative,
      onSecondaryContainer: ThemeColors.contentPrimary,
    ),
  );
  static final darkTheme = ThemeData(
    primaryColor: ThemeColors.contentPrimaryBlack,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeColors.backgroundPrimaryBlack,
      foregroundColor: ThemeColors.white,
      elevation: 0,
    ),
    scaffoldBackgroundColor: ThemeColors.backgroundPrimaryBlack,
    indicatorColor: ThemeColors.contentPrimaryBlack,
    disabledColor: ThemeColors.contentSecondaryBlack,
    hintColor: ThemeColors.contentTertiaryBlack,
    cardColor: ThemeColors.contentDisabledBlack,
    shadowColor: ThemeColors.contentBrandBlack,
    splashColor: ThemeColors.contentLinkBlack,
    dividerColor: ThemeColors.contentNegativeBlack,
    secondaryHeaderColor: ThemeColors.contentWarningBlack,
    hoverColor: ThemeColors.contentPositiveBlack,
    highlightColor: ThemeColors.backgroundSecondaryBlack,
    canvasColor: ThemeColors.backgroundDisabledBlack,
    focusColor: ThemeColors.backgroundBrandBlack,
    unselectedWidgetColor: ThemeColors.backgroundBrandSubtitleBlack,
    primaryColorDark: ThemeColors.backgroundNegativeSubtitleBlack,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColors.backgroundWarningSubtitleBlack,
      onPrimary: ThemeColors.backgroundPositiveSubtitleBlack,
      secondary: ThemeColors.borderPrimaryBlack,
      onSecondary: ThemeColors.borderSecondaryBlack,
      error: ThemeColors.iconGreyColorBlack,
      onError: ThemeColors.borderTetiraryBlack,
      surface: ThemeColors.borderiDisabledBlack,
      onSurface: ThemeColors.borderBrandBlack,
      primaryContainer: ThemeColors.borderBrandPositiveBlack,
      onPrimaryContainer: ThemeColors.borderBrandWarningBlack,
      secondaryContainer: ThemeColors.borderBrandNegativeBlacki,
      onSecondaryContainer: ThemeColors.contentBrand,
    ),
  );
}

/// Define an extension on BuildContext
extension AppColorsExtension on BuildContext {
  /// Shortcut for accessing specific colors
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get backgroundColor => Theme.of(this).scaffoldBackgroundColor;
  Color get contentPrimary => Theme.of(this).indicatorColor;
  Color get contentSecondary => Theme.of(this).disabledColor;
  Color get iconGreyColor => Theme.of(this).colorScheme.error;
  Color get contentTertiary => Theme.of(this).hintColor;
  Color get contentDisabled => Theme.of(this).cardColor;
  Color get contentBrand => Theme.of(this).shadowColor;
  Color get contentLink => Theme.of(this).splashColor;
  Color get contentNegative => Theme.of(this).dividerColor;
  Color get contentWarning => Theme.of(this).secondaryHeaderColor;
  Color get contentPositive => Theme.of(this).hoverColor;
  Color get backgroundSecondary => Theme.of(this).highlightColor;
  Color get backgroundDisabled => Theme.of(this).canvasColor;
  Color get backgroundBrand => Theme.of(this).focusColor;
  Color get backgroundBrandSubtitle => Theme.of(this).unselectedWidgetColor;
  Color get backgroundNegativeSubtitle => Theme.of(this).primaryColorDark;
  Color get backgroundWarningSubtitle => Theme.of(this).colorScheme.primary;
  Color get backgroundPositiveSubtitle => Theme.of(this).colorScheme.onPrimary;
  Color get borderPrimary => Theme.of(this).colorScheme.secondary;
  Color get borderSecondary => Theme.of(this).colorScheme.onSecondary;
  Color get borderTetirary => Theme.of(this).colorScheme.onError;
  Color get borderDisabled => Theme.of(this).colorScheme.surface;
  Color get borderBrand => Theme.of(this).colorScheme.onSurface;
  Color get borderBrandPositive => Theme.of(this).colorScheme.primaryContainer;
  Color get borderBrandWarning => Theme.of(this).colorScheme.onPrimaryContainer;
  Color get borderBrandNegative =>
      Theme.of(this).colorScheme.secondaryContainer;
  Color get buttonBackground => Theme.of(this).colorScheme.onSecondaryContainer;
}
