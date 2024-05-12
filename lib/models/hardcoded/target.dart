import 'package:freezed_annotation/freezed_annotation.dart';

part 'target.freezed.dart';
part 'target.g.dart';

@freezed
class Target with _$Target {
  const factory Target({
    required String id,
    required String name,
  }) = _Target;

  factory Target.fromJson(Map<String, dynamic> json) => _$TargetFromJson(json);
}

const defaultRanges = [
  Target(id: 'None', name: 'None'),
  Target(id: 'User', name: 'User'),
  Target(id: 'NearAlly', name: 'Near Ally'),
  Target(id: 'UserOrNearAlly', name: 'User or Near Ally'),
  Target(id: 'AllAllies', name: 'All Allies'),
  Target(id: 'UserAndAllies', name: 'User and Allies'),
  Target(id: 'NearFoe', name: 'Near Foe'),
  Target(id: 'RandomNearFoe', name: 'Random Near Foe'),
  Target(id: 'AllNearFoes', name: 'All Near Foes'),
  Target(id: 'Foe', name: 'Foe'),
  Target(id: 'AllFoes', name: 'All Foes'), // Unused?
  Target(id: 'NearOther', name: 'Near Other'),
  Target(id: 'NearAllOthers', name: 'Near All Others'),
  Target(id: 'Other', name: 'Other'),
  Target(id: 'AllBattlers', name: 'All Battlers'),
  Target(id: 'UserSide', name: 'User Side'),
  Target(id: 'FoeSide', name: 'Foe Side'),
  Target(id: 'BothSides', name: 'Both Sides'),
];
