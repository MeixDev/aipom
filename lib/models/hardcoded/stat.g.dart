// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
      type: $enumDecode(_$StatTypeEnumMap, json['type']),
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'type': _$StatTypeEnumMap[instance.type]!,
      'order': instance.order,
    };

const _$StatTypeEnumMap = {
  StatType.main: 'main',
  StatType.mainBattle: 'mainBattle',
  StatType.battle: 'battle',
};
