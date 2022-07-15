// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      address: json['address'],
      city: json['city'],
      country: json['country'],
      isActive: json['isActive'],
      isDeleted: json['isDeleted'],
      phone: json['phone'],
      state: json['state'],
      name: json['name'],
      zip: json['zip'],
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'isActive': instance.isActive,
      'isDeleted': instance.isDeleted,
      'phone': instance.phone,
      'state': instance.state,
      'name': instance.name,
      'zip': instance.zip,
    };
