// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topping _$ToppingFromJson(Map<String, dynamic> json) => Topping(
      isAvailable: json['isAvailable'],
      name: json['name'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$ToppingToJson(Topping instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
    };
