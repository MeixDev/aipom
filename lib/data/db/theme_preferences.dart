import 'dart:convert';

import 'package:aipom/providers/theme_provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:system_theme/system_theme.dart';

class ThemeSharedPrefs {
  factory ThemeSharedPrefs() {
    if (_instance case final ThemeSharedPrefs instance) return instance;
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  const ThemeSharedPrefs._();
  static ThemeSharedPrefs? _instance;
  static SharedPreferences? _prefs;

  static Future<void> ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
    _instance ??= const ThemeSharedPrefs._();
  }

  /*
  ** Theme Mode
  */
  static const _themeKey = 'theme';
  ThemeMode get mode {
    if (_prefs case final SharedPreferences prefs) {
      final theme = prefs.getInt(_themeKey);
      if (theme == null) return ThemeMode.system;
      return ThemeMode.values[theme];
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  set mode(ThemeMode mode) => updateThemeMode(mode);
  Future<void> updateThemeMode(ThemeMode mode) async {
    if (_prefs case final SharedPreferences prefs) {
      await prefs.setInt(_themeKey, mode.index);
      return;
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  /*
  ** Accent Color
  */

  static const _accentColorKey = 'accentColor';
  AccentColor get color {
    return Colors.purple;
    // if (_prefs case final SharedPreferences prefs) {
    //   final color = prefs.getString(_accentColorKey);
    //   if (color == null) return systemAccentColor;
    //   // ignore: avoid_as
    //   final dataColor = json.decode(color) as Map<String, int>;
    //   final colorSwatch = AccentColor.swatch({
    //     'darkest': Color(dataColor["darkest"] ?? 0xFF000000),
    //     'darker': Color(dataColor["darker"] ?? 0xFF000000),
    //     'dark': Color(dataColor["dark"] ?? 0xFF000000),
    //     'normal': Color(dataColor["normal"] ?? 0xFF000000),
    //     'light': Color(dataColor["light"] ?? 0xFF000000),
    //     'lighter': Color(dataColor["lighter"] ?? 0xFF000000),
    //     'lightest': Color(dataColor["lightest"] ?? 0xFF000000),
    //   });
    //   return colorSwatch;
    // }
    // throw Exception('ThemeSharedPrefs must be initialized first. '
    //     'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  set color(AccentColor color) => updateAccentColor(color);
  Future<void> updateAccentColor(AccentColor color) async {
    final colorSwatch = {
      'darkest': color.darkest.value,
      'darker': color.darker.value,
      'dark': color.dark.value,
      'normal': color.value,
      'light': color.light.value,
      'lighter': color.lighter.value,
      'lightest': color.lightest.value,
    };
    if (_prefs case final SharedPreferences prefs) {
      await prefs.setString(_accentColorKey, jsonEncode(colorSwatch));
      return;
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  /*
  ** Pane Display Mode
  */

  static const _paneDisplayModeKey = 'paneDisplayMode';
  PaneDisplayMode get displayMode {
    if (_prefs case final SharedPreferences prefs) {
      final mode = prefs.getInt(_paneDisplayModeKey);
      if (mode == null) return PaneDisplayMode.compact;
      return PaneDisplayMode.values[mode];
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  set displayMode(PaneDisplayMode mode) => updatePaneDisplayMode(mode);
  Future<void> updatePaneDisplayMode(PaneDisplayMode mode) async {
    if (_prefs case final SharedPreferences prefs) {
      await prefs.setInt(_paneDisplayModeKey, mode.index);
      return;
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  /*
  ** Navigation Indicators
  */

  static const _navigationIndicatorsKey = 'navigationIndicators';
  NavigationIndicators get indicators {
    if (_prefs case final SharedPreferences prefs) {
      final indicators = prefs.getInt(_navigationIndicatorsKey);
      if (indicators == null) return NavigationIndicators.sticky;
      return NavigationIndicators.values[indicators];
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  set indicators(NavigationIndicators indicators) =>
      updateNavigationIndicators(indicators);
  Future<void> updateNavigationIndicators(
    NavigationIndicators indicators,
  ) async {
    if (_prefs case final SharedPreferences prefs) {
      await prefs.setInt(_navigationIndicatorsKey, indicators.index);
      return;
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  /*
  ** Text Direction
  */

  static const _textDirectionKey = 'textDirection';
  TextDirection get textDirection {
    if (_prefs case final SharedPreferences prefs) {
      final direction = prefs.getInt(_textDirectionKey);
      if (direction == null) return TextDirection.ltr;
      return TextDirection.values[direction];
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  set textDirection(TextDirection direction) => updateTextDirection(direction);
  Future<void> updateTextDirection(TextDirection direction) async {
    if (_prefs case final SharedPreferences prefs) {
      await prefs.setInt(_textDirectionKey, direction.index);
      return;
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  /*
  ** Locale
  */

  static const _localeKey = 'locale';
  Locale get locale {
    if (_prefs case final SharedPreferences prefs) {
      final locale = prefs.getString(_localeKey);
      if (locale == null) return const Locale('en');
      return Locale.fromSubtags(languageCode: locale);
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  set locale(Locale locale) => updateLocale(locale);
  Future<void> updateLocale(Locale locale) async {
    if (_prefs case final SharedPreferences prefs) {
      await prefs.setString(_localeKey, locale.languageCode);
      return;
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  /*
  ** Window Effects
  */

  static const _windowEffectKey = 'windowEffect';
  WindowEffect get windowEffect {
    if (_prefs case final SharedPreferences prefs) {
      final effect = prefs.getInt(_windowEffectKey);
      if (effect == null) return WindowEffect.disabled;
      return WindowEffect.values[effect];
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }

  set windowEffect(WindowEffect effect) => updateWindowEffect(effect);
  Future<void> updateWindowEffect(WindowEffect effect) async {
    if (_prefs case final SharedPreferences prefs) {
      await prefs.setInt(_windowEffectKey, effect.index);
      return;
    }
    throw Exception('ThemeSharedPrefs must be initialized first. '
        'Please call ThemeSharedPrefs.ensureInitialized before.');
  }
}

AccentColor get systemAccentColor {
  // if ((defaultTargetPlatform == TargetPlatform.windows ||
  //         defaultTargetPlatform == TargetPlatform.android) &&
  //     !kIsWeb) {
  //   return AccentColor.swatch({
  //     'darkest': SystemTheme.accentColor.darkest,
  //     'darker': SystemTheme.accentColor.darker,
  //     'dark': SystemTheme.accentColor.dark,
  //     'normal': SystemTheme.accentColor.accent,
  //     'light': SystemTheme.accentColor.light,
  //     'lighter': SystemTheme.accentColor.lighter,
  //     'lightest': SystemTheme.accentColor.lightest,
  //   });
  // }
  return Colors.purple;
}
