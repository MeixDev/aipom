import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_method.freezed.dart';
part 'evolution_method.g.dart';

// TODO: Should probably include some form of Parameter personalization for better automation.
@freezed
class EvolutionMethod with _$EvolutionMethod {
  const factory EvolutionMethod({
    required String id,
    required String name,
  }) = _EvolutionMethod;

  factory EvolutionMethod.fromJson(Map<String, dynamic> json) =>
      _$EvolutionMethodFromJson(json);
}

const defaultEvolutionMethods = [
  EvolutionMethod(id: 'Level', name: 'Level'),
  EvolutionMethod(id: 'LevelMale', name: 'Level as Male'),
  EvolutionMethod(id: 'LevelFemale', name: 'Level as Female'),
  EvolutionMethod(id: 'LevelDay', name: 'Level during Day'),
  EvolutionMethod(id: 'LevelNight', name: 'Level during Night'),
  EvolutionMethod(id: 'LevelMorning', name: 'Level during Morning'),
  EvolutionMethod(id: 'LevelAfternoon', name: 'Level during Afternoon'),
  EvolutionMethod(id: 'LevelEvening', name: 'Level during Evening'),
  EvolutionMethod(id: 'LevelNoWeather', name: 'Level with No Weather'),
  EvolutionMethod(id: 'LevelSun', name: 'Level during Sun'),
  EvolutionMethod(id: 'LevelRain', name: 'Level during Rain'),
  EvolutionMethod(id: 'LevelSnow', name: 'Level during Snow'),
  EvolutionMethod(id: 'LevelSandstorm', name: 'Level during Sandstorm'),
  EvolutionMethod(id: 'LevelCycling', name: 'Level while Cycling'),
  EvolutionMethod(id: 'LevelSurfing', name: 'Level while Surfing'),
  EvolutionMethod(id: 'LevelDiving', name: 'Level while Diving'),
  EvolutionMethod(id: 'LevelDarkness', name: 'Level in Darkness'),
  EvolutionMethod(
    id: 'LevelDarkInParty',
    name: 'Level with Dark Type in Party',
  ),
  EvolutionMethod(id: 'AttackGreater', name: 'Level with Greater Attack'),
  EvolutionMethod(
    id: 'AtkDefEqual',
    name: 'Level with Equal Attack and Defense',
  ),
  EvolutionMethod(id: 'DefenseGreater', name: 'Level with Greater Defense'),
  EvolutionMethod(id: 'Silcoon', name: '"Personality Value" for Silcoon'),
  EvolutionMethod(id: 'Cascoon', name: '"Personality Value" for Cascoon'),
  EvolutionMethod(id: 'Ninjask', name: 'Ninjask'),
  EvolutionMethod(id: 'Shedinja', name: 'Shedinja'),
  EvolutionMethod(id: 'Happiness', name: 'Happiness'),
  EvolutionMethod(id: 'HappinessMale', name: 'Happiness as Male'),
  EvolutionMethod(id: 'HappinessFemale', name: 'Happiness as Female'),
  EvolutionMethod(id: 'HappinessDay', name: 'Happiness during Day'),
  EvolutionMethod(id: 'HappinessNight', name: 'Happiness during Night'),
  EvolutionMethod(id: 'HappinessMove', name: 'Happiness with Move'),
  EvolutionMethod(id: 'HappinessMoveType', name: 'Happiness with Move of Type'),
  EvolutionMethod(id: 'HappinessHoldItem', name: 'Happiness with Hold Item'),
  EvolutionMethod(id: 'MaxHappiness', name: 'Max Happiness'),
  EvolutionMethod(id: 'Beauty', name: 'Beauty'),
  EvolutionMethod(id: 'HoldItem', name: 'Hold Item'),
  EvolutionMethod(id: 'HoldItemMale', name: 'Hold Item as Male'),
  EvolutionMethod(id: 'HoldItemFemale', name: 'Hold Item as Female'),
  EvolutionMethod(id: 'DayHoldItem', name: 'Hold Item during Day'),
  EvolutionMethod(id: 'NightHoldItem', name: 'Hold Item during Night'),
  EvolutionMethod(id: 'HoldItemHappiness', name: 'Hold Item with Happiness'),
  EvolutionMethod(id: 'HasMove', name: 'Has Move'),
  EvolutionMethod(id: 'HasMoveType', name: 'Has Move of Type'),
  EvolutionMethod(id: 'HasInParty', name: 'Has in Party'),
  EvolutionMethod(id: 'Location', name: 'Location'),
  EvolutionMethod(id: 'LocationFlag', name: 'Location with Flag'),
  EvolutionMethod(id: 'Region', name: 'Region'),
  EvolutionMethod(id: 'Item', name: 'Item'),
  EvolutionMethod(id: 'ItemMale', name: 'Item as Male'),
  EvolutionMethod(id: 'ItemFemale', name: 'Item as Female'),
  EvolutionMethod(id: 'ItemDay', name: 'Item during Day'),
  EvolutionMethod(id: 'ItemNight', name: 'Item during Night'),
  EvolutionMethod(id: 'ItemHappiness', name: 'Item with Happiness'),
  EvolutionMethod(id: 'Trade', name: 'Trade'),
  EvolutionMethod(id: 'TradeMale', name: 'Trade as Male'),
  EvolutionMethod(id: 'TradeFemale', name: 'Trade as Female'),
  EvolutionMethod(id: 'TradeDay', name: 'Trade during Day'),
  EvolutionMethod(id: 'TradeNight', name: 'Trade during Night'),
  EvolutionMethod(id: 'TradeItem', name: 'Trade with Hold Item'),
  EvolutionMethod(id: 'TradeSpecies', name: 'Trade with Species'),
  EvolutionMethod(
    id: 'BattleDealCriticalHit',
    name: 'Battle with Critical Hit',
  ),
  EvolutionMethod(id: 'Event', name: 'Event'),
  EvolutionMethod(
    id: 'EventAfterDamageTaken',
    name: 'Event after Damage Taken',
  ),
  // TODO: Add Gen9 Methods ?
];
