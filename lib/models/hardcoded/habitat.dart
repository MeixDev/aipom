import 'package:freezed_annotation/freezed_annotation.dart';

part 'habitat.freezed.dart';
part 'habitat.g.dart';

@freezed
class Habitat with _$Habitat {
  const factory Habitat({
    required String id,
    required String name,
  }) = _Habitat;

  factory Habitat.fromJson(Map<String, dynamic> json) =>
      _$HabitatFromJson(json);
}

const defaultHabitats = [
  Habitat(id: 'None', name: 'None'),
  Habitat(id: 'Grassland', name: 'Grassland'),
  Habitat(id: 'Forest', name: 'Forest'),
  Habitat(id: 'WatersEdge', name: "Water's Edge"),
  Habitat(id: 'Sea', name: 'Sea'),
  Habitat(id: 'Cave', name: 'Cave'),
  Habitat(id: 'Mountain', name: 'Mountain'),
  Habitat(id: 'RoughTerrain', name: 'Rough Terrain'),
  Habitat(id: 'Urban', name: 'Urban'),
  Habitat(id: 'Rare', name: 'Rare'),
];
