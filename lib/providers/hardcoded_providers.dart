// import 'dart:io';

// import 'package:json2yaml/json2yaml.dart';
// import 'package:aipom/models/hardcoded/growth_rate.dart';
// import 'package:yaml/yaml.dart';

/// Recreates all Maps and Lists recursively to ensure normal Dart types
// dynamic yamlToDart(dynamic value) {
//   if (value is Map) {
//     List<MapEntry<String, dynamic>> entries = [];
//     // we cannot directly use `entries` because `YamlMap` will return Nodes instead of values.
//     for (final key in value.keys) {
//       entries.add(MapEntry(key, yamlToDart(value[key])));
//     }
//     return Map.fromEntries(entries);
//   } else if (value is List) {
//     return List.from(value.map(yamlToDart));
//   } else {
//     return value;
//   }
// }

// List<GrowthRate> _initializeGrowthRates() {
//   List<GrowthRate> growthRates = [];
//   const hardcodedDir = 'yamlPBS/hardcoded';
//   Directory(hardcodedDir).createSync(recursive: true);
//   final growthRatesFile = File('$hardcodedDir/growth_rates.yaml');
//   if (growthRatesFile.existsSync()) {
//     final yaml = growthRatesFile.readAsStringSync();
//     final decodedYaml = loadYaml(yaml);
//     if (decodedYaml['growthRates'] != null) {
//       final yamlGrowthRates = decodedYaml['growthRates'] as List;
//       for (final growthRate in yamlGrowthRates) {
//         final normalizedGrowthRate = yamlToDart(growthRate);
//         final decodedGrowthRate = GrowthRate.fromJson(normalizedGrowthRate);
//         growthRates.add(decodedGrowthRate);
//       }
//     }
//   } else {
//     final encodedGrowthRates = defaultGrowthRates.map((e) => e.toJson());
//     growthRatesFile.writeAsStringSync(
//       json2yaml(
//         {'growthRates': encodedGrowthRates},
//       ),
//     );
//     growthRates = defaultGrowthRates;
//   }
//   return growthRates;
// }
