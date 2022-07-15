// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sauce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sauce _$SauceFromJson(Map<String, dynamic> json) => Sauce(
      name: json['name'] as String?,
      isAvailable: json['isAvailable'],
      price: json['price'] as int?,
    );

Map<String, dynamic> _$SauceToJson(Sauce instance) => <String, dynamic>{
      'name': instance.name,
      'isAvailable': instance.isAvailable,
      'price': instance.price,
    };
