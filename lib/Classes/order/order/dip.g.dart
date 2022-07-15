// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dip _$DipFromJson(Map<String, dynamic> json) => Dip(
      name: json['name'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$DipToJson(Dip instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'isAvailable': instance.isAvailable,
    };
