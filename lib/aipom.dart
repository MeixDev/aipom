import 'package:aipom/providers/theme_provider.dart';
import 'package:aipom/router.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:flutter_riverpod/flutter_riverpod.dart';

// TODO: Make that a provider
const String appTitle = "Aipom - PBS Editor for Pokémon Essential v21.1";

class Aipom extends ConsumerWidget {
  const Aipom({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeStateProvider);
    final accentColor = ref.watch(accentColorStateProvider);
    final locale = ref.watch(localeStateProvider);
    final textDirection = ref.watch(textDirectionStateProvider);
    final windowEffect = ref.watch(windowEffectStateProvider);
    return FluentApp.router(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: FluentThemeData().copyWith(
        accentColor: accentColor,
      ),
      darkTheme: FluentThemeData.dark().copyWith(
        accentColor: accentColor,
      ),
      themeMode: themeMode,
      locale: locale,
      builder: (context, child) {
        return Directionality(
          textDirection: textDirection,
          child: NavigationPaneTheme(
            data: NavigationPaneThemeData(
              backgroundColor:
                  windowEffect != flutter_acrylic.WindowEffect.disabled
                      ? Colors.transparent
                      : null,
            ),
            child: child ?? const SizedBox(),
          ),
        );
      },
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
