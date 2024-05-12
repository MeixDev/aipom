import 'dart:io';

import 'package:aipom/data/db/app_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_directory_provider.g.dart';

@riverpod
class ProjectStatus extends _$ProjectStatus {
  @override
  bool build() {
    return false;
  }

  bool isProjectOpened() {
    return state;
  }

  // ignore: use_setters_to_change_properties
  void setProjectOpened({required bool opened}) {
    state = opened;
  }
}

@riverpod
class ProjectDirectory extends _$ProjectDirectory {
  @override
  Directory build() {
    return Directory.current;
  }

  Directory getDirectory() {
    return state;
  }

  bool isProjectOpened() {
    return state != Directory.current;
  }

  void setProject(Directory directory) {
    state = directory;
    ref.read(projectStatusProvider.notifier).setProjectOpened(opened: true);
    final appSharedPrefs = AppSharedPrefs();
    appSharedPrefs.projectHistory = [
      ...appSharedPrefs.projectHistory,
      directory.path,
    ];
  }
}
