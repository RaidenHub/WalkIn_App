// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      discount: json['discount'] as int?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentId: json['paymentId'] as String?,
      userId: json['userId'] as String?,
      customeName: json['customeName'] as String?,
      shopId: json['shopId'] as String?,
      status: json['status'] as String?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'discount': instance.discount,
      'paymentMethod': instance.paymentMethod,
      'paymentId': instance.paymentId,
      'userId': instance.userId,
      'customeName': instance.customeName,
      'shopId': instance.shopId,
      'status': instance.status,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      '__v': instance.v,
    };
