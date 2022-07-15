// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shopper _$ShopperFromJson(Map<String, dynamic> json) => Shopper(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      image: json['image'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      country: json['country'] as String?,
      isActive: json['isActive'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      category: json['category'] as String?,
      subCategory: json['subCategory'] as String?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$ShopperToJson(Shopper instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'image': instance.image,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'country': instance.country,
      'isActive': instance.isActive,
      'isDeleted': instance.isDeleted,
      'category': instance.category,
      'subCategory': instance.subCategory,
      '__v': instance.v,
    };
