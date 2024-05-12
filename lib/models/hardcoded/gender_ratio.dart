import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_ratio.freezed.dart';
part 'gender_ratio.g.dart';

@freezed
class GenderRatio with _$GenderRatio {
  const factory GenderRatio({
    required String id,
    required String name,
  }) = _GenderRatio;

  factory GenderRatio.fromJson(Map<String, dynamic> json) =>
      _$GenderRatioFromJson(json);
}

const defaultGenderRatios = [
  GenderRatio(id: 'AlwaysMale', name: 'Always Male'),
  GenderRatio(id: 'AlwaysFemale', name: 'Always Female'),
  GenderRatio(id: 'Genderless', name: 'Genderless'),
  GenderRatio(id: 'FemaleOneEighth', name: 'Female One Eighth'),
  GenderRatio(id: 'Female25Percent', name: 'Female 25 Percent'),
  GenderRatio(id: 'Female50Percent', name: 'Female 50 Percent'),
  GenderRatio(id: 'Female75Percent', name: 'Female 75 Percent'),
  GenderRatio(id: 'FemaleSevenEighths', name: 'Female Seven Eighths'),
];
