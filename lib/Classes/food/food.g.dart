// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      id: json['_id'] as String?,
      category: json['category'] as String?,
      dips: (json['dips'] as List<dynamic>?)
          ?.map((e) => Dip.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      discount: json['discount'] as int?,
      extras: (json['extras'] as List<dynamic>?)
          ?.map((e) => Extra.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      foodType: json['foodType'] as String?,
      name: json['name'] as String?,
      numberOfFreeExtras: json['numberOfFreeExtras'] as int?,
      numberOfFreeDips: json['numberOfFreeDips'] as int?,
      numberOfFreeSauces: json['numberOfFreeSauces'] as int?,
      numberOfFreeToppings: json['numberOfFreeToppings'] as int?,
      price: json['price'] as int?,
      status: json['status'] as String?,
      sauces: (json['sauces'] as List<dynamic>?)
          ?.map((e) => Sauce.fromJson(e as Map<String, dynamic>))
          .toList(),
      toppings: (json['toppings'] as List<dynamic>?)
          ?.map((e) => Topping.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      '_id': instance.id,
      'category': instance.category,
      'dips': instance.dips,
      'description': instance.description,
      'discount': instance.discount,
      'extras': instance.extras,
      'image': instance.image,
      'foodType': instance.foodType,
      'name': instance.name,
      'numberOfFreeExtras': instance.numberOfFreeExtras,
      'numberOfFreeDips': instance.numberOfFreeDips,
      'numberOfFreeSauces': instance.numberOfFreeSauces,
      'numberOfFreeToppings': instance.numberOfFreeToppings,
      'price': instance.price,
      'status': instance.status,
      'sauces': instance.sauces,
      'toppings': instance.toppings,
    };
