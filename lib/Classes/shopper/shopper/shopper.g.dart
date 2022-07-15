// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shopper _$ShopperFromJson(Map<String, dynamic> json) => Shopper(
      id: json['_id'] as String?,
      address: json['address'] as String?,
      category: json['category'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      isActive: json['isActive'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      state: json['state'] as String?,
      subCategory: json['subCategory'] as String?,
      userId: json['userId'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$ShopperToJson(Shopper instance) => <String, dynamic>{
      '_id': instance.id,
      'address': instance.address,
      'category': instance.category,
      'city': instance.city,
      'country': instance.country,
      'email': instance.email,
      'isActive': instance.isActive,
      'isDeleted': instance.isDeleted,
      'name': instance.name,
      'phone': instance.phone,
      'state': instance.state,
      'subCategory': instance.subCategory,
      'userId': instance.userId,
      'zip': instance.zip,
    };
