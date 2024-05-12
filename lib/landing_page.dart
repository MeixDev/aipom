import 'dart:async';
import 'dart:io';

import 'package:aipom/gen/assets.gen.dart';
import 'package:aipom/page.dart';
import 'package:aipom/providers/project_directory_provider.dart';
import 'package:aipom/spacer.dart';
import 'package:aipom/ui/mixins/simple_dialog.dart';
import 'package:aipom/ui/widgets/recent_project.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ini/ini.dart';
import 'package:path/path.dart' as p;

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});

  @override
  ConsumerState<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage>
    with PageMixin, SimpleDialogMixin {
  bool selected = true;
  String? comboboxValue;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasFluentTheme(context));
    final theme = FluentTheme.of(context);

    return ScaffoldPage.withPadding(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Version 0.1.0',
              ),
            ],
          ),
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aipom, the PBS Editor',
                    style: theme.typography.titleLarge,
                  ),
                  largeSpacer,
                  FilledButton(
                    onPressed: () async {
                      final FilePickerResult? result =
                          await FilePicker.platform.pickFiles(
                        dialogTitle: 'Select Rxproj Project',
                        lockParentWindow: true,
                        type: FileType.custom,
                        allowedExtensions: ['rxproj'],
                      );
                      if (result != null) {
                        final path = result.files.single.path;
                        if (path != null &&
                            context.mounted &&
                            p.extension(path) == '.rxproj') {
                          final basename = p.dirname(path);
                          ref
                              .read(projectDirectoryProvider.notifier)
                              .setProject(Directory(basename));
                          //TODO: Temp, scanning files and parsing Inis
                          //TODO AGAIN: OMG IT WORKS! God it's gonna be a long parse though.
                          final directory = Directory(basename);
                          final abilityFile =
                              File('${directory.path}/PBS/abilities.txt');
                          unawaited(
                            abilityFile.readAsLines().then((lines) {
                              final config = Config.fromStrings(lines);
                              final list = config.sections();
                              print(list);
                            }),
                          );
                        } else {}
                      }
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        mediumHorizontalSpacer,
                        Assets.icons.pokemon.image(width: 24, height: 24),
                        smallHorizontalSpacer,
                        Text(
                          'Open Project',
                          style: theme.typography.bodyStrong?.copyWith(
                            color: theme.resources.textOnAccentFillColorPrimary,
                          ),
                        ),
                        mediumHorizontalSpacer,
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Recent Projects', style: theme.typography.subtitle),
                    mediumSpacer,
                    Row(
                      children: [
                        // Expanded(
                        //   child: Container(),
                        // ),
                        RecentProject(
                          isPopulated: true,
                          name: "Test",
                          version: "1.0",
                          lastModified: DateTime.now(),
                        ),
                        mediumHorizontalSpacer,
                        const RecentProject(),
                        mediumHorizontalSpacer,
                        const RecentProject(),
                        // Expanded(
                        //   child: Container(),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              HyperlinkButton(
                onPressed: () async {},
                child: const Text('Documentation'),
              ),
              mediumHorizontalSpacer,
              HyperlinkButton(
                onPressed: () async {},
                child: const Text('Discord? Maybe? Meh.'),
              ),
              const Expanded(child: SizedBox.shrink()),
              Button(
                onPressed: () async {},
                child: const Text('About Aipom'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SponsorButton extends StatelessWidget {
  const SponsorButton({
    super.key,
    required this.imageUrl,
    required this.username,
  });

  final String imageUrl;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
            ),
            shape: BoxShape.circle,
          ),
        ),
        Text(username),
      ],
    );
  }
}
