// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topping _$ToppingFromJson(Map<String, dynamic> json) => Topping(
      name: json['name'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$ToppingToJson(Topping instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'isAvailable': instance.isAvailable,
    };
