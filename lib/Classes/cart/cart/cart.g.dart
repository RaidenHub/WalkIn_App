// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      id: json['_id'] as String?,
      dips: (json['dips'] as List<dynamic>?)
          ?.map((e) => Dip.fromJson(e as Map<String, dynamic>))
          .toList(),
      extras: (json['extras'] as List<dynamic>?)
          ?.map((e) => Extra.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      productId: json['productId'],
      sauces: (json['sauces'] as List<dynamic>?)
          ?.map((e) => Sauce.fromJson(e as Map<String, dynamic>))
          .toList(),
      shopId: json['shopId'],
      toppings: (json['toppings'] as List<dynamic>?)
          ?.map((e) => Topping.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      '_id': instance.id,
      'dips': instance.dips,
      'extras': instance.extras,
      'price': instance.price,
      'quantity': instance.quantity,
      'productId': instance.productId,
      'sauces': instance.sauces,
      'shopId': instance.shopId,
      'toppings': instance.toppings,
      'userId': instance.userId,
    };
