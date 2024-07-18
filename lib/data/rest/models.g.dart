// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseItemImpl _$$ResponseItemImplFromJson(Map<String, dynamic> json) =>
    _$ResponseItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ResponseItemImplToJson(_$ResponseItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$AddItemRequestImpl _$$AddItemRequestImplFromJson(Map<String, dynamic> json) =>
    _$AddItemRequestImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AddItemRequestImplToJson(
        _$AddItemRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
