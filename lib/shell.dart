import 'package:aipom/aipom.dart';
import 'package:aipom/gen/assets.gen.dart';
import 'package:aipom/landing_page.dart';
import 'package:aipom/providers/project_directory_provider.dart';
import 'package:aipom/providers/theme_provider.dart';
import 'package:aipom/router.dart';
import 'package:aipom/ui/widgets/window_buttons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/link.dart';
import 'package:window_manager/window_manager.dart';

class AipomShell extends ConsumerStatefulWidget {
  const AipomShell({
    super.key,
    required this.child,
    required this.shellContext,
  });

  final Widget child;
  final BuildContext? shellContext;

  @override
  ConsumerState<AipomShell> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<AipomShell> with WindowListener {
  bool value = false;

  // int index = 0;

  final viewKey = GlobalKey(debugLabel: 'Navigation View Key');
  final searchKey = GlobalKey(debugLabel: 'Search Bar Key');
  final searchFocusNode = FocusNode();
  final searchController = TextEditingController();

  late final List<NavigationPaneItem> originalItems = [
    PaneItem(
      key: const ValueKey('/'),
      icon: Assets.icons.home.image(width: 24, height: 24),
      title: const Text('Home'),
      body: const SizedBox.shrink(),
    ),
    PaneItemSeparator(),
    PaneItem(
      key: const ValueKey('/pokemon'),
      icon: Assets.icons.pokemon.image(width: 24, height: 24),
      title: const Text('Pokémon'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/abilities'),
      icon: Assets.icons.abilities.image(width: 24, height: 24),
      title: const Text('Abilities'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/moves'),
      icon: Assets.icons.moves.image(width: 24, height: 24),
      title: const Text('Moves'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/items'),
      icon: Assets.icons.items.image(width: 24, height: 24),
      title: const Text('Items'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/types'),
      icon: Assets.icons.types.image(width: 24, height: 24),
      title: const Text('Types'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/encounters'),
      icon: Assets.icons.encounters.image(width: 24, height: 24),
      title: const Text('Encounters'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/town_map'),
      icon: Assets.icons.townMap.image(width: 24, height: 24),
      title: const Text('Town Map'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/ribbons'),
      icon: Assets.icons.ribbons.image(width: 24, height: 24),
      title: const Text('Ribbons'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/berry_plants'),
      icon: Assets.icons.berries.image(width: 24, height: 24),
      title: const Text('Berry Plants'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/regional_dex'),
      icon: Assets.icons.regionalDex.image(width: 24, height: 24),
      title: const Text('Regional Dex'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/phone'),
      icon: Assets.icons.phone.image(width: 24, height: 24),
      title: const Text('Phone'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/metadata'),
      icon: Assets.icons.metadata.image(width: 24, height: 24),
      title: const Text('Metadata'),
      body: const SizedBox.shrink(),
    ),
    PaneItemSeparator(),
    PaneItem(
      key: const ValueKey('/trainer_types'),
      icon: Assets.icons.trainerTypes.image(width: 24, height: 24),
      title: const Text('Trainer Types'),
      body: const SizedBox.shrink(),
    ),
    PaneItem(
      key: const ValueKey('/trainers'),
      icon: Assets.icons.trainers.image(width: 24, height: 24),
      title: const Text('Trainers'),
      body: const SizedBox.shrink(),
    ),
    PaneItemSeparator(),
    PaneItem(
      key: const ValueKey('/hardcoded_data'),
      icon: Assets.icons.hardcoded.image(width: 24, height: 24),
      title: const Text('Hardcoded Data'),
      body: const SizedBox.shrink(),
    ),
  ].map<NavigationPaneItem>((e) {
    PaneItem buildPaneItem(PaneItem item) {
      return PaneItem(
        key: item.key,
        icon: item.icon,
        title: item.title,
        body: item.body,
        onTap: () {
          if (item.key case final ValueKey<String> key) {
            final path = key.value;
            if (GoRouterState.of(context).uri.toString() != path) {
              context.go(path);
            }
            item.onTap?.call();
          }
        },
      );
    }

    if (e is PaneItemExpander) {
      return PaneItemExpander(
        key: e.key,
        icon: e.icon,
        title: e.title,
        body: e.body,
        items: e.items.map((item) {
          if (item is PaneItem) return buildPaneItem(item);
          return item;
        }).toList(),
      );
    }
    if (e is PaneItem) return buildPaneItem(e);
    return e;
  }).toList();
  late final List<NavigationPaneItem> footerItems = [
    PaneItemSeparator(),
    PaneItem(
      key: const ValueKey('/settings'),
      icon: Assets.icons.trainerTypes.image(width: 24, height: 24),
      title: const Text('Settings'),
      body: const SizedBox.shrink(),
      onTap: () {
        if (GoRouterState.of(context).uri.toString() != '/settings') {
          context.go('/settings');
        }
      },
    ),
    _LinkPaneItemAction(
      icon: Assets.icons.linkingCord.image(width: 24, height: 24),
      title: const Text('Source code'),
      link: 'https://github.com/MeixDev',
      body: const SizedBox.shrink(),
    ),
  ];

  @override
  void initState() {
    windowManager.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final int indexOriginal = originalItems
        .where((item) => item.key != null)
        .toList()
        .indexWhere((item) => item.key == Key(location));

    if (indexOriginal == -1) {
      final int indexFooter = footerItems
          .where((element) => element.key != null)
          .toList()
          .indexWhere((element) => element.key == Key(location));
      if (indexFooter == -1) {
        return 0;
      }
      return originalItems
              .where((element) => element.key != null)
              .toList()
              .length +
          indexFooter;
    } else {
      return indexOriginal;
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = FluentLocalizations.of(context);

    final displayMode = ref.watch(paneDisplayStateProvider);
    final themeModeNotifier = ref.read(themeStateProvider.notifier);
    final accentColor = ref.watch(accentColorStateProvider);
    final navigationIndicator = ref.watch(navigationIndicatorStateProvider);
    final projectStatus = ref.watch(projectStatusProvider);
    final theme = FluentTheme.of(context);
    if (widget.shellContext != null) {
      if (router.canPop() == false) {
        setState(() {});
      }
    }
    return NavigationView(
      key: viewKey,
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        leading: () {
          final enabled = widget.shellContext != null && router.canPop();

          final onPressed = enabled
              ? () {
                  if (router.canPop()) {
                    context.pop();
                    setState(() {});
                  }
                }
              : null;
          return NavigationPaneTheme(
            data: NavigationPaneTheme.of(context).merge(
              NavigationPaneThemeData(
                unselectedIconColor: ButtonState.resolveWith((states) {
                  if (states.isDisabled) {
                    return ButtonThemeData.buttonColor(context, states);
                  }
                  return ButtonThemeData.uncheckedInputColor(
                    FluentTheme.of(context),
                    states,
                  ).basedOnLuminance();
                }),
              ),
            ),
            child: Builder(
              builder: (context) => PaneItem(
                icon: const Center(child: Icon(FluentIcons.back, size: 12)),
                title: Text(localizations.backButtonTooltip),
                body: const SizedBox.shrink(),
                enabled: enabled,
              ).build(
                context,
                false,
                onPressed,
                displayMode: PaneDisplayMode.compact,
              ),
            ),
          );
        }(),
        title: () {
          if (kIsWeb) {
            return const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(appTitle),
            );
          }
          return const DragToMoveArea(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(appTitle),
            ),
          );
        }(),
        actions: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: ToggleSwitch(
                  content: FluentTheme.of(context).brightness.isDark
                      ? Assets.icons.moonStone.image(width: 24, height: 24)
                      : Assets.icons.sunStone.image(width: 24, height: 24),
                  checked: FluentTheme.of(context).brightness.isDark,
                  onChanged: (v) {
                    if (v) {
                      themeModeNotifier.setTheme(ThemeMode.dark);
                    } else {
                      themeModeNotifier.setTheme(ThemeMode.light);
                    }
                  },
                ),
              ),
            ),
            if (!kIsWeb) const WindowButtons(),
          ],
        ),
      ),
      paneBodyBuilder: (item, child) {
        final String name;
        if (item != null) {
          if (item.key case final ValueKey<String> key) {
            name = key.value;
            return FocusTraversalGroup(
              key: ValueKey('body$name'),
              child: widget.child,
            );
          }
        }
        throw Exception('Item Key is null');
      },
      content: projectStatus ? null : const LandingPage(),
      pane: !projectStatus
          ? null
          : NavigationPane(
              selected: _calculateSelectedIndex(context),
              size: const NavigationPaneSize(
                compactWidth: 56,
                openWidth: 200,
              ),
              header: SizedBox(
                height: kOneLineTileHeight,
                child: ShaderMask(
                  shaderCallback: (rect) {
                    final color = accentColor.defaultBrushFor(
                      theme.brightness,
                    );
                    return LinearGradient(
                      colors: [
                        color,
                        color,
                      ],
                    ).createShader(rect);
                  },
                  child: const SizedBox.expand(),
                ),
              ),
              displayMode: displayMode,
              indicator: () {
                switch (navigationIndicator) {
                  case NavigationIndicators.end:
                    return const EndNavigationIndicator();
                  case NavigationIndicators.sticky:
                  default:
                    return const StickyNavigationIndicator();
                }
              }(),
              items: originalItems,
              // autoSuggestBox: Builder(builder: (context) {
              //   return AutoSuggestBox(
              //     key: searchKey,
              //     focusNode: searchFocusNode,
              //     controller: searchController,
              //     unfocusedColor: Colors.transparent,
              //     // also need to include sub items from [PaneItemExpander] items
              //     items: <PaneItem>[
              //       ...originalItems
              //           .whereType<PaneItemExpander>()
              //           .expand<PaneItem>((item) {
              //         return [
              //           item,
              //           ...item.items.whereType<PaneItem>(),
              //         ];
              //       }),
              //       ...originalItems
              //           .where(
              //             (item) => item is PaneItem && item is! PaneItemExpander,
              //           )
              //           .cast<PaneItem>(),
              //     ].map((item) {
              //       assert(item.title is Text);
              //       final text = (item.title as Text).data!;
              //       return AutoSuggestBoxItem(
              //         label: text,
              //         value: text,
              //         onSelected: () {
              //           item.onTap?.call();
              //           searchController.clear();
              //           searchFocusNode.unfocus();
              //           final view = NavigationView.of(context);
              //           if (view.compactOverlayOpen) {
              //             view.compactOverlayOpen = false;
              //           } else if (view.minimalPaneOpen) {
              //             view.minimalPaneOpen = false;
              //           }
              //         },
              //       );
              //     }).toList(),
              //     trailingIcon: IgnorePointer(
              //       child: IconButton(
              //         onPressed: () {},
              //         icon: const Icon(FluentIcons.search),
              //       ),
              //     ),
              //     placeholder: 'Search',
              //   );
              // }),
              // autoSuggestBoxReplacement: const Icon(FluentIcons.search),
              footerItems: footerItems,
            ),
      onOpenSearch: searchFocusNode.requestFocus,
    );
  }

  @override
  Future<void> onWindowClose() async {
    final bool isPreventClose = await windowManager.isPreventClose();
    if (isPreventClose && mounted) {
      await showDialog(
        context: context,
        builder: (_) {
          // TODO: EXPAND THIS TO AUTOMATICALLY SAVE SHIT AND ALL
          return ContentDialog(
            title: const Text('Confirm close'),
            content: const Text('Are you sure you want to close this window?'),
            actions: [
              FilledButton(
                child: const Text('Yes'),
                onPressed: () {
                  Navigator.pop(context);
                  windowManager.destroy();
                },
              ),
              Button(
                child: const Text('No'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }
}

class _LinkPaneItemAction extends PaneItem {
  _LinkPaneItemAction({
    required super.icon,
    required this.link,
    required super.body,
    super.title,
  });

  final String link;

  @override
  Widget build(
    BuildContext context,
    bool selected,
    VoidCallback? onPressed, {
    PaneDisplayMode? displayMode,
    bool showTextOnTop = true,
    bool? autofocus,
    int? itemIndex,
  }) {
    return Link(
      uri: Uri.parse(link),
      builder: (context, followLink) => Semantics(
        link: true,
        child: super.build(
          context,
          selected,
          followLink,
          displayMode: displayMode,
          showTextOnTop: showTextOnTop,
          itemIndex: itemIndex,
          autofocus: autofocus,
        ),
      ),
    );
  }
}
