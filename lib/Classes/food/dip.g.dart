// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dip _$DipFromJson(Map<String, dynamic> json) => Dip(
      isAvailable: json['isAvailable'],
      name: json['name'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$DipToJson(Dip instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
    };
