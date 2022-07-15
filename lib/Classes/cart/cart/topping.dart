import 'package:json_annotation/json_annotation.dart';

part 'topping.g.dart';

@JsonSerializable()
class Topping {
  dynamic isAvailable;
  String? name;
  int? price;
  int? quantity;

  Topping({this.isAvailable, this.name, this.price, this.quantity});

  @override
  String toString() {
    return 'Topping(isAvailable: $isAvailable, name: $name, price: $price, quantity: $quantity)';
  }

  factory Topping.fromJson(Map<String, dynamic> json) {
    return _$ToppingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToppingToJson(this);
}
