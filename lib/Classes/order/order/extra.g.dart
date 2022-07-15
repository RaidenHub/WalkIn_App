// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Extra _$ExtraFromJson(Map<String, dynamic> json) => Extra(
      name: json['name'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$ExtraToJson(Extra instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'isAvailable': instance.isAvailable,
    };
