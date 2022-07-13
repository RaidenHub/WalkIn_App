// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$toppingsInput _$Input$toppingsInputFromJson(Map<String, dynamic> json) =>
    Input$toppingsInput(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$Input$toppingsInputToJson(
        Input$toppingsInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };

Input$dipsInput _$Input$dipsInputFromJson(Map<String, dynamic> json) =>
    Input$dipsInput(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$Input$dipsInputToJson(Input$dipsInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };

Input$saucesInput _$Input$saucesInputFromJson(Map<String, dynamic> json) =>
    Input$saucesInput(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$Input$saucesInputToJson(Input$saucesInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };

Input$extrasInput _$Input$extrasInputFromJson(Map<String, dynamic> json) =>
    Input$extrasInput(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$Input$extrasInputToJson(Input$extrasInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };
