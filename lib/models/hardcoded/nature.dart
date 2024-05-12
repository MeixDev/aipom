import 'package:freezed_annotation/freezed_annotation.dart';

part 'nature.freezed.dart';
part 'nature.g.dart';

@freezed
class Nature with _$Nature {
  const factory Nature({
    required String id,
    required String name,
    List<NatureStatChange>? statChanges,
  }) = _Nature;

  factory Nature.fromJson(Map<String, dynamic> json) => _$NatureFromJson(json);
}

@freezed
class NatureStatChange with _$NatureStatChange {
  const factory NatureStatChange({
    required String statId,
    required int change, // In percentage
  }) = _NatureStatChange;

  factory NatureStatChange.fromJson(Map<String, dynamic> json) =>
      _$NatureStatChangeFromJson(json);
}

const defaultNature = [
  Nature(id: 'HARDY', name: 'Hardy'),
  Nature(
    id: 'LONELY',
    name: 'Lonely',
    statChanges: [
      NatureStatChange(statId: 'ATTACK', change: 10),
      NatureStatChange(statId: 'DEFENSE', change: -10),
    ],
  ),
  Nature(
    id: 'BRAVE',
    name: 'Brave',
    statChanges: [
      NatureStatChange(statId: 'ATTACK', change: 10),
      NatureStatChange(statId: 'SPEED', change: -10),
    ],
  ),
  Nature(
    id: 'ADAMANT',
    name: 'Adamant',
    statChanges: [
      NatureStatChange(statId: 'ATTACK', change: 10),
      NatureStatChange(statId: 'SPECIAL_ATTACK', change: -10),
    ],
  ),
  Nature(
    id: 'NAUGHTY',
    name: 'Naughty',
    statChanges: [
      NatureStatChange(statId: 'ATTACK', change: 10),
      NatureStatChange(statId: 'SPECIAL_DEFENSE', change: -10),
    ],
  ),
  Nature(
    id: 'BOLD',
    name: 'Bold',
    statChanges: [
      NatureStatChange(statId: 'DEFENSE', change: 10),
      NatureStatChange(statId: 'ATTACK', change: -10),
    ],
  ),
  Nature(id: 'DOCILE', name: 'Docile'),
  Nature(
    id: 'RELAXED',
    name: 'Relaxed',
    statChanges: [
      NatureStatChange(statId: 'DEFENSE', change: 10),
      NatureStatChange(statId: 'SPEED', change: -10),
    ],
  ),
  Nature(
    id: 'IMPISH',
    name: 'Impish',
    statChanges: [
      NatureStatChange(statId: 'DEFENSE', change: 10),
      NatureStatChange(statId: 'SPECIAL_ATTACK', change: -10),
    ],
  ),
  Nature(
    id: 'LAX',
    name: 'Lax',
    statChanges: [
      NatureStatChange(statId: 'DEFENSE', change: 10),
      NatureStatChange(statId: 'SPECIAL_DEFENSE', change: -10),
    ],
  ),
  Nature(
    id: 'TIMID',
    name: 'Timid',
    statChanges: [
      NatureStatChange(statId: 'SPEED', change: 10),
      NatureStatChange(statId: 'ATTACK', change: -10),
    ],
  ),
  Nature(
    id: 'HASTY',
    name: 'Hasty',
    statChanges: [
      NatureStatChange(statId: 'SPEED', change: 10),
      NatureStatChange(statId: 'DEFENSE', change: -10),
    ],
  ),
  Nature(id: 'SERIOUS', name: 'Serious'),
  Nature(
    id: 'JOLLY',
    name: 'Jolly',
    statChanges: [
      NatureStatChange(statId: 'SPEED', change: 10),
      NatureStatChange(statId: 'SPECIAL_ATTACK', change: -10),
    ],
  ),
  Nature(
    id: 'NAIVE',
    name: 'Naive',
    statChanges: [
      NatureStatChange(statId: 'SPEED', change: 10),
      NatureStatChange(statId: 'SPECIAL_DEFENSE', change: -10),
    ],
  ),
  Nature(
    id: 'MODEST',
    name: 'Modest',
    statChanges: [
      NatureStatChange(statId: 'SPECIAL_ATTACK', change: 10),
      NatureStatChange(statId: 'ATTACK', change: -10),
    ],
  ),
  Nature(
    id: 'MILD',
    name: 'Mild',
    statChanges: [
      NatureStatChange(statId: 'SPECIAL_ATTACK', change: 10),
      NatureStatChange(statId: 'DEFENSE', change: -10),
    ],
  ),
  Nature(
    id: 'QUIET',
    name: 'Quiet',
    statChanges: [
      NatureStatChange(statId: 'SPECIAL_ATTACK', change: 10),
      NatureStatChange(statId: 'SPEED', change: -10),
    ],
  ),
  Nature(id: 'BASHFUL', name: 'Bashful'),
  Nature(
    id: 'RASH',
    name: 'Rash',
    statChanges: [
      NatureStatChange(statId: 'SPECIAL_ATTACK', change: 10),
      NatureStatChange(statId: 'SPECIAL_DEFENSE', change: -10),
    ],
  ),
  Nature(
    id: 'CALM',
    name: 'Calm',
    statChanges: [
      NatureStatChange(statId: 'SPECIAL_DEFENSE', change: 10),
      NatureStatChange(statId: 'ATTACK', change: -10),
    ],
  ),
  Nature(
    id: 'GENTLE',
    name: 'Gentle',
    statChanges: [
      NatureStatChange(statId: 'SPECIAL_DEFENSE', change: 10),
      NatureStatChange(statId: 'DEFENSE', change: -10),
    ],
  ),
  Nature(
    id: 'SASSY',
    name: 'Sassy',
    statChanges: [
      NatureStatChange(statId: 'SPECIAL_DEFENSE', change: 10),
      NatureStatChange(statId: 'SPEED', change: -10),
    ],
  ),
  Nature(
    id: 'CAREFUL',
    name: 'Careful',
    statChanges: [
      NatureStatChange(statId: 'SPECIAL_DEFENSE', change: 10),
      NatureStatChange(statId: 'SPECIAL_ATTACK', change: -10),
    ],
  ),
  Nature(id: 'QUIRKY', name: 'Quirky'),
];
