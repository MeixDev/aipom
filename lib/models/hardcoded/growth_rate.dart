import 'package:freezed_annotation/freezed_annotation.dart';

part 'growth_rate.freezed.dart';
part 'growth_rate.g.dart';

@freezed
class GrowthRate with _$GrowthRate {
  const factory GrowthRate({
    required String id,
    required String name,
  }) = _GrowthRate;

  factory GrowthRate.fromJson(Map<String, dynamic> json) =>
      _$GrowthRateFromJson(json);
}

const defaultGrowthRates = [
  GrowthRate(id: 'Medium', name: 'Medium'),
  GrowthRate(id: 'Erratic', name: 'Erratic'),
  GrowthRate(id: 'Fluctuating', name: 'Fluctuating'),
  GrowthRate(id: 'Parabolic', name: 'Parabolic'),
  GrowthRate(id: 'Fast', name: 'Fast'),
  GrowthRate(id: 'Slow', name: 'Slow'),
];
