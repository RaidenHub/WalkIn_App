// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sauce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sauce _$SauceFromJson(Map<String, dynamic> json) => Sauce(
      name: json['name'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$SauceToJson(Sauce instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'isAvailable': instance.isAvailable,
    };
