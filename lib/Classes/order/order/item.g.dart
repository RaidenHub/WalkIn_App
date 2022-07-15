// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      userId: json['userId'] as String?,
      foodId: json['foodId'] as String?,
      toppings: (json['toppings'] as List<dynamic>?)
          ?.map((e) => Topping.fromJson(e as Map<String, dynamic>))
          .toList(),
      dips: (json['dips'] as List<dynamic>?)
          ?.map((e) => Dip.fromJson(e as Map<String, dynamic>))
          .toList(),
      extras: (json['extras'] as List<dynamic>?)
          ?.map((e) => Extra.fromJson(e as Map<String, dynamic>))
          .toList(),
      sauces: (json['sauces'] as List<dynamic>?)
          ?.map((e) => Sauce.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
      'userId': instance.userId,
      'foodId': instance.foodId,
      'toppings': instance.toppings,
      'dips': instance.dips,
      'extras': instance.extras,
      'sauces': instance.sauces,
    };
