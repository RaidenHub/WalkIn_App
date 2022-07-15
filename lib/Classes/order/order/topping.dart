import 'package:json_annotation/json_annotation.dart';

part 'topping.g.dart';

@JsonSerializable()
class Topping {
  String? name;
  int? price;
  int? quantity;
  bool? isAvailable;

  Topping({this.name, this.price, this.quantity, this.isAvailable});

  @override
  String toString() {
    return 'Topping(name: $name, price: $price, quantity: $quantity, isAvailable: $isAvailable)';
  }

  factory Topping.fromJson(Map<String, dynamic> json) {
    return _$ToppingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToppingToJson(this);

  Topping copyWith({
    String? name,
    int? price,
    int? quantity,
    bool? isAvailable,
  }) {
    return Topping(
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }
}
