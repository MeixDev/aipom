import 'package:aipom/aipom.dart';
import 'package:aipom/data/db/app_preferences.dart';
import 'package:aipom/data/db/theme_preferences.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:system_theme/system_theme.dart';
import 'package:window_manager/window_manager.dart';

bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.macOS,
    TargetPlatform.windows,
    TargetPlatform.linux,
  ].contains(defaultTargetPlatform);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeSharedPrefs.ensureInitialized();
  await AppSharedPrefs.ensureInitialized();
  // if it's not on the web, windows or android, load the accent color
  if (!kIsWeb &&
      [
        TargetPlatform.windows,
        TargetPlatform.android,
      ].contains(defaultTargetPlatform)) {
    await SystemTheme.accentColor.load();
  }

  if (isDesktop) {
    await flutter_acrylic.Window.initialize();
    if (defaultTargetPlatform == TargetPlatform.windows) {
      await flutter_acrylic.Window.hideWindowControls();
    }
    await WindowManager.instance.ensureInitialized();
    await windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setTitleBarStyle(
        TitleBarStyle.hidden,
        windowButtonVisibility: false,
      );
      await windowManager.setMinimumSize(const Size(1200, 800));
      await windowManager.show();
      await windowManager.setPreventClose(true);
      await windowManager.setSkipTaskbar(false);
    });
  }

  runApp(const ProviderScope(child: Aipom()));
}
