// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NatureImpl _$$NatureImplFromJson(Map<String, dynamic> json) => _$NatureImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      statChanges: (json['statChanges'] as List<dynamic>?)
          ?.map((e) => NatureStatChange.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NatureImplToJson(_$NatureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'statChanges': instance.statChanges,
    };

_$NatureStatChangeImpl _$$NatureStatChangeImplFromJson(
        Map<String, dynamic> json) =>
    _$NatureStatChangeImpl(
      statId: json['statId'] as String,
      change: (json['change'] as num).toInt(),
    );

Map<String, dynamic> _$$NatureStatChangeImplToJson(
        _$NatureStatChangeImpl instance) =>
    <String, dynamic>{
      'statId': instance.statId,
      'change': instance.change,
    };
