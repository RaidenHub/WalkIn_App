// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$myquery _$Query$myqueryFromJson(Map<String, dynamic> json) =>
    Query$myquery(
      getFoods: (json['getFoods'] as List<dynamic>?)
          ?.map(
              (e) => Query$myquery$getFoods.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$myqueryToJson(Query$myquery instance) =>
    <String, dynamic>{
      'getFoods': instance.getFoods?.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$myquery$getFoods _$Query$myquery$getFoodsFromJson(
        Map<String, dynamic> json) =>
    Query$myquery$getFoods(
      dips: (json['dips'] as List<dynamic>?)
          ?.map((e) =>
              Query$myquery$getFoods$dips.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] as String,
      description: json['description'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$myquery$getFoodsToJson(
        Query$myquery$getFoods instance) =>
    <String, dynamic>{
      'dips': instance.dips?.map((e) => e.toJson()).toList(),
      'category': instance.category,
      'description': instance.description,
      '__typename': instance.$__typename,
    };

Query$myquery$getFoods$dips _$Query$myquery$getFoods$dipsFromJson(
        Map<String, dynamic> json) =>
    Query$myquery$getFoods$dips(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$myquery$getFoods$dipsToJson(
        Query$myquery$getFoods$dips instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      '__typename': instance.$__typename,
    };
