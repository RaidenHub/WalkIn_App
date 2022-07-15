import 'package:json_annotation/json_annotation.dart';

import 'dip.dart';
import 'extra.dart';
import 'sauce.dart';
import 'topping.dart';

part 'cart.g.dart';

@JsonSerializable()
class Cart {
  @JsonKey(name: '_id')
  String? id;
  List<Dip>? dips;
  List<Extra>? extras;
  int? price;
  int? quantity;
  dynamic productId;
  List<Sauce>? sauces;
  dynamic shopId;
  List<Topping>? toppings;
  String? userId;

  Cart({
    this.id,
    this.dips,
    this.extras,
    this.price,
    this.quantity,
    this.productId,
    this.sauces,
    this.shopId,
    this.toppings,
    this.userId,
  });

  @override
  String toString() {
    return 'Cart(id: $id, dips: $dips, extras: $extras, price: $price, quantity: $quantity, productId: $productId, sauces: $sauces, shopId: $shopId, toppings: $toppings, userId: $userId)';
  }

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
