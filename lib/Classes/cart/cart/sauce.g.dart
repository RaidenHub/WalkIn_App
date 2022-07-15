// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sauce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sauce _$SauceFromJson(Map<String, dynamic> json) => Sauce(
      isAvailable: json['isAvailable'],
      name: json['name'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$SauceToJson(Sauce instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
    };
