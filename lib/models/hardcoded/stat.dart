import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat.freezed.dart';
part 'stat.g.dart';

enum StatType { main, mainBattle, battle }

@freezed
class Stat with _$Stat {
  const factory Stat({
    required String id,
    required String name,
    required String abbreviation,
    required StatType type,
    int? order,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

const defaultStats = [
  Stat(id: 'HP', name: 'HP', abbreviation: 'HP', type: StatType.main, order: 0),
  Stat(
    id: 'ATTACK',
    name: 'Attack',
    abbreviation: 'Atk',
    type: StatType.mainBattle,
    order: 1,
  ),
  Stat(
    id: 'DEFENSE',
    name: 'Defense',
    abbreviation: 'Def',
    type: StatType.mainBattle,
    order: 2,
  ),
  Stat(
    id: 'SPECIAL_ATTACK',
    name: 'Special Attack',
    abbreviation: 'SpAtk',
    type: StatType.mainBattle,
    order: 4,
  ),
  Stat(
    id: 'SPECIAL_DEFENSE',
    name: 'Special Defense',
    abbreviation: 'SpDef',
    type: StatType.mainBattle,
    order: 5,
  ),
  Stat(
    id: 'SPEED',
    name: 'Speed',
    abbreviation: 'Spd',
    type: StatType.mainBattle,
    order: 3,
  ),
  Stat(
    id: 'ACCURACY',
    name: 'Accuracy',
    abbreviation: 'Acc',
    type: StatType.battle,
  ),
  Stat(
    id: 'EVASION',
    name: 'Evasion',
    abbreviation: 'Eva',
    type: StatType.battle,
  ),
];
