import 'package:freezed_annotation/freezed_annotation.dart';

part 'egg_group.freezed.dart';
part 'egg_group.g.dart';

@freezed
class EggGroup with _$EggGroup {
  const factory EggGroup({
    required String id,
    required String name,
  }) = _EggGroup;

  factory EggGroup.fromJson(Map<String, dynamic> json) =>
      _$EggGroupFromJson(json);
}

const defaultEggGroups = [
  EggGroup(id: 'Undiscovered', name: 'Undiscovered'),
  EggGroup(id: 'Monster', name: 'Monster'),
  EggGroup(id: 'Water1', name: 'Water 1'),
  EggGroup(id: 'Bug', name: 'Bug'),
  EggGroup(id: 'Flying', name: 'Flying'),
  EggGroup(id: 'Field', name: 'Field'),
  EggGroup(id: 'Fairy', name: 'Fairy'),
  EggGroup(id: 'Grass', name: 'Grass'),
  EggGroup(id: 'HumanLike', name: 'Human-Like'),
  EggGroup(id: 'Water3', name: 'Water 3'),
  EggGroup(id: 'Mineral', name: 'Mineral'),
  EggGroup(id: 'Amorphous', name: 'Amorphous'),
  EggGroup(id: 'Water2', name: 'Water 2'),
  EggGroup(id: 'Ditto', name: 'Ditto'),
  EggGroup(id: 'Dragon', name: 'Dragon'),
];
