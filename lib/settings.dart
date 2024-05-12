// ignore_for_file: constant_identifier_names, unused_local_variable

import 'package:aipom/page.dart';
import 'package:aipom/providers/theme_provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const List<String> accentColorNames = [
  'System',
  'Yellow',
  'Orange',
  'Red',
  'Magenta',
  'Purple',
  'Blue',
  'Teal',
  'Green',
];

bool get kIsWindowEffectsSupported {
  return !kIsWeb &&
      [
        TargetPlatform.windows,
        TargetPlatform.linux,
        TargetPlatform.macOS,
      ].contains(defaultTargetPlatform);
}

const _LinuxWindowEffects = [
  WindowEffect.disabled,
  WindowEffect.transparent,
];

const _WindowsWindowEffects = [
  WindowEffect.disabled,
  WindowEffect.solid,
  WindowEffect.transparent,
  WindowEffect.aero,
  WindowEffect.acrylic,
  WindowEffect.mica,
  WindowEffect.tabbed,
];

const _MacosWindowEffects = [
  WindowEffect.disabled,
  WindowEffect.titlebar,
  WindowEffect.selection,
  WindowEffect.menu,
  WindowEffect.popover,
  WindowEffect.sidebar,
  WindowEffect.headerView,
  WindowEffect.sheet,
  WindowEffect.windowBackground,
  WindowEffect.hudWindow,
  WindowEffect.fullScreenUI,
  WindowEffect.toolTip,
  WindowEffect.contentBackground,
  WindowEffect.underWindowBackground,
  WindowEffect.underPageBackground,
];

List<WindowEffect> get currentWindowEffects {
  if (kIsWeb) return [];

  if (defaultTargetPlatform == TargetPlatform.windows) {
    return _WindowsWindowEffects;
  } else if (defaultTargetPlatform == TargetPlatform.linux) {
    return _LinuxWindowEffects;
  } else if (defaultTargetPlatform == TargetPlatform.macOS) {
    return _MacosWindowEffects;
  }

  return [];
}

class Settings extends ConsumerStatefulWidget {
  const Settings({super.key});

  @override
  ConsumerState<Settings> createState() => _SettingsState();
}

class _SettingsState extends ConsumerState<Settings> with PageMixin {
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));

    final locale = ref.watch(localeStateProvider);
    final localeNotifier = ref.read(localeStateProvider.notifier);

    final themeMode = ref.watch(themeStateProvider);
    final themeModeNotifier = ref.read(themeStateProvider.notifier);

    final displayMode = ref.watch(paneDisplayStateProvider);
    final displayModeNotifier = ref.read(paneDisplayStateProvider.notifier);

    final navigationIndicator = ref.watch(navigationIndicatorStateProvider);
    final navigationIndicatorNotifier =
        ref.read(navigationIndicatorStateProvider.notifier);

    final textDirection = ref.watch(textDirectionStateProvider);
    final textDirectionNotifier = ref.read(textDirectionStateProvider.notifier);

    final windowEffect = ref.watch(windowEffectStateProvider);
    final windowEffectNotifier = ref.read(windowEffectStateProvider.notifier);

    const spacer = SizedBox(height: 10);
    const biggerSpacer = SizedBox(height: 40);

    const supportedLocales = FluentLocalizations.supportedLocales;
    final currentLocale = locale;
    return ScaffoldPage.scrollable(
      header: const PageHeader(title: Text('Aipom Settings')),
      children: const [
        // Text('Theme mode', style: FluentTheme.of(context).typography.subtitle),
        // spacer,
        // ...List.generate(ThemeMode.values.length, (index) {
        //   final mode = ThemeMode.values[index];
        //   return Padding(
        //     padding: const EdgeInsetsDirectional.only(bottom: 8.0),
        //     child: RadioButton(
        //       checked: themeMode == mode,
        //       onChanged: (value) {
        //         if (value) {
        //           themeModeNotifier.setTheme(mode);

        //           if (kIsWindowEffectsSupported) {
        //             // some window effects require on [dark] to look good.
        //             // appTheme.setEffect(WindowEffect.disabled, context);
        //             windowEffectNotifier.setEffect(windowEffect, context);
        //           }
        //         }
        //       },
        //       content:
        //           Text('$mode'.replaceAll('ThemeMode.', '').uppercaseFirst()),
        //     ),
        //   );
        // }),
        // spacer,
        // Text(
        //   'Navigation Pane Display Mode',
        //   style: FluentTheme.of(context).typography.subtitle,
        // ),
        // spacer,
        // ...List.generate(PaneDisplayMode.values.length, (index) {
        //   final mode = PaneDisplayMode.values[index];
        //   return Padding(
        //     padding: const EdgeInsetsDirectional.only(bottom: 8.0),
        //     child: RadioButton(
        //       checked: displayMode == mode,
        //       onChanged: (value) {
        //         if (value) displayModeNotifier.setPaneDisplay(mode);
        //       },
        //       content: Text(
        //         mode.toString().replaceAll('PaneDisplayMode.', ''),
        //       ),
        //     ),
        //   );
        // }),
        // biggerSpacer,
        // Text('Navigation Indicator',
        //     style: FluentTheme.of(context).typography.subtitle),
        // spacer,
        // ...List.generate(NavigationIndicators.values.length, (index) {
        //   final mode = NavigationIndicators.values[index];
        //   return Padding(
        //     padding: const EdgeInsetsDirectional.only(bottom: 8.0),
        //     child: RadioButton(
        //       checked: navigationIndicator == mode,
        //       onChanged: (value) {
        //         if (value) {
        //           navigationIndicatorNotifier.setNavigationIndicator(mode);
        //         }
        //       },
        //       content: Text(
        //         mode.toString().replaceAll('NavigationIndicators.', ''),
        //       ),
        //     ),
        //   );
        // }),
        // biggerSpacer,
        // Text('Accent Color',
        //     style: FluentTheme.of(context).typography.subtitle),
        // spacer,
        // Wrap(children: [
        //   Tooltip(
        //     message: accentColorNames[0],
        //     child: _buildColorBlock(systemAccentColor),
        //   ),
        //   ...List.generate(Colors.accentColors.length, (index) {
        //     final color = Colors.accentColors[index];
        //     return Tooltip(
        //       message: accentColorNames[index + 1],
        //       child: _buildColorBlock(color),
        //     );
        //   }),
        // ]),
        // if (kIsWindowEffectsSupported) ...[
        //   biggerSpacer,
        //   Text(
        //     'Window Transparency',
        //     style: FluentTheme.of(context).typography.subtitle,
        //   ),
        //   description(
        //     content: Text(
        //       'Running on ${defaultTargetPlatform.toString().replaceAll('TargetPlatform.', '')}',
        //     ),
        //   ),
        //   spacer,
        //   ...List.generate(currentWindowEffects.length, (index) {
        //     final mode = currentWindowEffects[index];
        //     return Padding(
        //       padding: const EdgeInsetsDirectional.only(bottom: 8.0),
        //       child: RadioButton(
        //         checked: windowEffect == mode,
        //         onChanged: (value) {
        //           if (value) {
        //             windowEffectNotifier.setWindowEffect(mode);
        //             windowEffectNotifier.setEffect(mode, context);
        //           }
        //         },
        //         content: Text(
        //           mode.toString().replaceAll('WindowEffect.', ''),
        //         ),
        //       ),
        //     );
        //   }),
        // ],
        // biggerSpacer,
        // Text(
        //   'Text Direction',
        //   style: FluentTheme.of(context).typography.subtitle,
        // ),
        // spacer,
        // ...List.generate(TextDirection.values.length, (index) {
        //   final direction = TextDirection.values[index];
        //   return Padding(
        //     padding: const EdgeInsetsDirectional.only(bottom: 8.0),
        //     child: RadioButton(
        //       checked: textDirection == direction,
        //       onChanged: (value) {
        //         if (value) {
        //           textDirectionNotifier.setTextDirection(direction);
        //         }
        //       },
        //       content: Text(
        //         '$direction'
        //             .replaceAll('TextDirection.', '')
        //             .replaceAll('rtl', 'Right to left')
        //             .replaceAll('ltr', 'Left to right'),
        //       ),
        //     ),
        //   );
        // }).reversed,
        // biggerSpacer,
        // Text('Locale', style: FluentTheme.of(context).typography.subtitle),
        // description(
        //   content: const Text(
        //     'The locale used by the fluent_ui widgets, such as TimePicker and '
        //     'DatePicker. This does not reflect the language of this showcase app.',
        //   ),
        // ),
        // spacer,
        // Wrap(
        //   spacing: 15.0,
        //   runSpacing: 10.0,
        //   children: List.generate(
        //     supportedLocales.length,
        //     (index) {
        //       final locale = supportedLocales[index];

        //       return Padding(
        //         padding: const EdgeInsetsDirectional.only(bottom: 8.0),
        //         child: RadioButton(
        //           checked: currentLocale == locale,
        //           onChanged: (value) {
        //             if (value) {
        //               localeNotifier.setLocale(locale);
        //             }
        //           },
        //           content: Text('$locale'),
        //         ),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }

  // ignore: unused_element
  Widget _buildColorBlock(AccentColor color) {
    final accentColor = ref.watch(accentColorStateProvider);
    final accentColorNotifier = ref.read(accentColorStateProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(2),
      child: Button(
        onPressed: () {
          accentColorNotifier.setAccentColor(color);
        },
        style: ButtonStyle(
          padding: ButtonState.all(EdgeInsets.zero),
          backgroundColor: ButtonState.resolveWith((states) {
            if (states.isPressing) {
              return color.light;
            } else if (states.isHovering) {
              return color.lighter;
            }
            return color;
          }),
        ),
        child: Container(
          height: 40,
          width: 40,
          alignment: AlignmentDirectional.center,
          child: accentColor == color
              ? Icon(
                  FluentIcons.check_mark,
                  color: color.basedOnLuminance(),
                  size: 22,
                )
              : null,
        ),
      ),
    );
  }
}
