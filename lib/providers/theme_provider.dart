import 'package:aipom/data/db/theme_preferences.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

enum NavigationIndicators { sticky, end }

@riverpod
class ThemeState extends _$ThemeState {
  @override
  ThemeMode build() {
    return ThemeSharedPrefs().mode;
  }

  ThemeMode getTheme() {
    return state;
  }

  void setTheme(ThemeMode mode) {
    state = mode;
    ThemeSharedPrefs().mode = mode;
  }
}

@riverpod
class AccentColorState extends _$AccentColorState {
  @override
  AccentColor build() {
    return ThemeSharedPrefs().color;
  }

  AccentColor getAccentColor() {
    return state;
  }

  void setAccentColor(AccentColor color) {
    state = color;
    ThemeSharedPrefs().color = color;
  }
}

@riverpod
class NavigationIndicatorState extends _$NavigationIndicatorState {
  @override
  NavigationIndicators build() {
    return ThemeSharedPrefs().indicators;
  }

  NavigationIndicators getNavigationIndicator() {
    return state;
  }

  void setNavigationIndicator(NavigationIndicators indicator) {
    state = indicator;
    ThemeSharedPrefs().indicators = indicator;
  }
}

@riverpod
class PaneDisplayState extends _$PaneDisplayState {
  @override
  PaneDisplayMode build() {
    return ThemeSharedPrefs().displayMode;
  }

  PaneDisplayMode getPaneDisplay() {
    return state;
  }

  void setPaneDisplay(PaneDisplayMode display) {
    state = display;
    ThemeSharedPrefs().displayMode = display;
  }
}

@riverpod
class TextDirectionState extends _$TextDirectionState {
  @override
  TextDirection build() {
    return ThemeSharedPrefs().textDirection;
  }

  TextDirection getTextDirection() {
    return state;
  }

  void setTextDirection(TextDirection direction) {
    state = direction;
    ThemeSharedPrefs().textDirection = direction;
  }
}

@riverpod
class LocaleState extends _$LocaleState {
  @override
  Locale build() {
    return ThemeSharedPrefs().locale;
  }

  Locale getLocale() {
    return state;
  }

  void setLocale(Locale locale) {
    state = locale;
    ThemeSharedPrefs().locale = locale;
  }
}

@riverpod
class WindowEffectState extends _$WindowEffectState {
  @override
  WindowEffect build() {
    return ThemeSharedPrefs().windowEffect;
  }

  WindowEffect getWindowEffect() {
    return state;
  }

  void setWindowEffect(WindowEffect effect) {
    state = effect;
    ThemeSharedPrefs().windowEffect = effect;
  }

  // ignore: avoid_build_context_in_providers
  void setEffect(WindowEffect effect, BuildContext context) {
    Window.setEffect(
      effect: effect,
      color: [
        WindowEffect.solid,
        WindowEffect.acrylic,
      ].contains(effect)
          ? FluentTheme.of(context).micaBackgroundColor.withOpacity(0.05)
          : Colors.transparent,
      dark: FluentTheme.of(context).brightness.isDark,
    );
  }
}
