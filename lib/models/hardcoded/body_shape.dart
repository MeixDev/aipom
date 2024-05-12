import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_shape.freezed.dart';
part 'body_shape.g.dart';

@freezed
class BodyShape with _$BodyShape {
  const factory BodyShape({
    required String id,
    required String name,
  }) = _BodyShape;

  factory BodyShape.fromJson(Map<String, dynamic> json) =>
      _$BodyShapeFromJson(json);
}

const defaultBodyShapes = [
  BodyShape(id: 'Head', name: 'Head'),
  BodyShape(id: 'Serpentine', name: 'Serpentine'),
  BodyShape(id: 'Finned', name: 'Finned'),
  BodyShape(id: 'HeadArms', name: 'Head and Arms'),
  BodyShape(id: 'HeadBase', name: 'Head and Base'),
  BodyShape(id: 'BipedalTail', name: 'Bipedal with Tail'),
  BodyShape(id: 'HeadLegs', name: 'Head and Legs'),
  BodyShape(id: 'Quadruped', name: 'Quadruped'),
  BodyShape(id: 'Winged', name: 'Winged'),
  BodyShape(id: 'Multiped', name: 'Multiped'),
  BodyShape(id: 'MultiBody', name: 'Multi Body'),
  BodyShape(id: 'Bipedal', name: 'Bipedal'),
  BodyShape(id: 'MultiWinged', name: 'Multi Winged'),
  BodyShape(id: 'Insectoid', name: 'Insectoid'),
];
