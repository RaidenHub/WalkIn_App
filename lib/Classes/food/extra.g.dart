// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Extra _$ExtraFromJson(Map<String, dynamic> json) => Extra(
      isAvailable: json['isAvailable'],
      name: json['name'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$ExtraToJson(Extra instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
    };
