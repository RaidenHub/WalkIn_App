// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      price: json['price'] as int?,
      discount: json['discount'] as int?,
      category: json['category'] as String?,
      subCategory: json['subCategory'] as String?,
      foodType: json['foodType'] as String?,
      status: json['status'] as String?,
      toppings: (json['toppings'] as List<dynamic>?)
          ?.map((e) => Topping.fromJson(e as Map<String, dynamic>))
          .toList(),
      dips: (json['dips'] as List<dynamic>?)
          ?.map((e) => Dip.fromJson(e as Map<String, dynamic>))
          .toList(),
      sauces: (json['sauces'] as List<dynamic>?)
          ?.map((e) => Sauce.fromJson(e as Map<String, dynamic>))
          .toList(),
      extras: (json['extras'] as List<dynamic>?)
          ?.map((e) => Extra.fromJson(e as Map<String, dynamic>))
          .toList(),
      numberOfFreeToppings: json['numberOfFreeToppings'] as int?,
      numberOfFreeDips: json['numberOfFreeDips'] as int?,
      numberOfFreeSauces: json['numberOfFreeSauces'] as int?,
      numberOfFreeExtras: json['numberOfFreeExtras'] as int?,
      v: json['__v'] as int?,
      shopId: json['shopId'] as String?,
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'discount': instance.discount,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'foodType': instance.foodType,
      'status': instance.status,
      'toppings': instance.toppings,
      'dips': instance.dips,
      'sauces': instance.sauces,
      'extras': instance.extras,
      'numberOfFreeToppings': instance.numberOfFreeToppings,
      'numberOfFreeDips': instance.numberOfFreeDips,
      'numberOfFreeSauces': instance.numberOfFreeSauces,
      'numberOfFreeExtras': instance.numberOfFreeExtras,
      '__v': instance.v,
      'shopId': instance.shopId,
    };
