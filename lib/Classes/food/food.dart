import 'package:json_annotation/json_annotation.dart';

import 'dip.dart';
import 'extra.dart';
import 'sauce.dart';
import 'topping.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? description;
  String? image;
  int? price;
  int? discount;
  String? category;
  String? subCategory;
  String? foodType;
  String? status;
  List<Topping>? toppings;
  List<Dip>? dips;
  List<Sauce>? sauces;
  List<Extra>? extras;
  int? numberOfFreeToppings;
  int? numberOfFreeDips;
  int? numberOfFreeSauces;
  int? numberOfFreeExtras;
  @JsonKey(name: '__v')
  int? v;
  String? shopId;

  Food({
    this.id,
    this.name,
    this.description,
    this.image,
    this.price,
    this.discount,
    this.category,
    this.subCategory,
    this.foodType,
    this.status,
    this.toppings,
    this.dips,
    this.sauces,
    this.extras,
    this.numberOfFreeToppings,
    this.numberOfFreeDips,
    this.numberOfFreeSauces,
    this.numberOfFreeExtras,
    this.v,
    this.shopId,
  });

  @override
  String toString() {
    return 'Food(id: $id, name: $name, description: $description, image: $image, price: $price, discount: $discount, category: $category, subCategory: $subCategory, foodType: $foodType, status: $status, toppings: $toppings, dips: $dips, sauces: $sauces, extras: $extras, numberOfFreeToppings: $numberOfFreeToppings, numberOfFreeDips: $numberOfFreeDips, numberOfFreeSauces: $numberOfFreeSauces, numberOfFreeExtras: $numberOfFreeExtras, v: $v, shopId: $shopId)';
  }

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);

  Food copyWith({
    String? id,
    String? name,
    String? description,
    String? image,
    int? price,
    int? discount,
    String? category,
    String? subCategory,
    String? foodType,
    String? status,
    List<Topping>? toppings,
    List<Dip>? dips,
    List<Sauce>? sauces,
    List<Extra>? extras,
    int? numberOfFreeToppings,
    int? numberOfFreeDips,
    int? numberOfFreeSauces,
    int? numberOfFreeExtras,
    int? v,
    String? shopId,
  }) {
    return Food(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      foodType: foodType ?? this.foodType,
      status: status ?? this.status,
      toppings: toppings ?? this.toppings,
      dips: dips ?? this.dips,
      sauces: sauces ?? this.sauces,
      extras: extras ?? this.extras,
      numberOfFreeToppings: numberOfFreeToppings ?? this.numberOfFreeToppings,
      numberOfFreeDips: numberOfFreeDips ?? this.numberOfFreeDips,
      numberOfFreeSauces: numberOfFreeSauces ?? this.numberOfFreeSauces,
      numberOfFreeExtras: numberOfFreeExtras ?? this.numberOfFreeExtras,
      v: v ?? this.v,
      shopId: shopId ?? this.shopId,
    );
  }
}
