// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusImpl _$$StatusImplFromJson(Map<String, dynamic> json) => _$StatusImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      iconPosition: (json['iconPosition'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StatusImplToJson(_$StatusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconPosition': instance.iconPosition,
    };
