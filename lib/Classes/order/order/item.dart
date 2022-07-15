import 'package:json_annotation/json_annotation.dart';

import 'dip.dart';
import 'extra.dart';
import 'sauce.dart';
import 'topping.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  int? price;
  int? quantity;
  String? userId;
  String? foodId;
  List<Topping>? toppings;
  List<Dip>? dips;
  List<Extra>? extras;
  List<Sauce>? sauces;

  Item({
    this.price,
    this.quantity,
    this.userId,
    this.foodId,
    this.toppings,
    this.dips,
    this.extras,
    this.sauces,
  });

  @override
  String toString() {
    return 'Item(price: $price, quantity: $quantity, userId: $userId, foodId: $foodId, toppings: $toppings, dips: $dips, extras: $extras, sauces: $sauces)';
  }

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  Item copyWith({
    int? price,
    int? quantity,
    String? userId,
    String? foodId,
    List<Topping>? toppings,
    List<Dip>? dips,
    List<Extra>? extras,
    List<Sauce>? sauces,
  }) {
    return Item(
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      userId: userId ?? this.userId,
      foodId: foodId ?? this.foodId,
      toppings: toppings ?? this.toppings,
      dips: dips ?? this.dips,
      extras: extras ?? this.extras,
      sauces: sauces ?? this.sauces,
    );
  }
}
