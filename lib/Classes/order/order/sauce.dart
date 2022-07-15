import 'package:json_annotation/json_annotation.dart';

part 'sauce.g.dart';

@JsonSerializable()
class Sauce {
  String? name;
  int? price;
  int? quantity;
  bool? isAvailable;

  Sauce({this.name, this.price, this.quantity, this.isAvailable});

  @override
  String toString() {
    return 'Sauce(name: $name, price: $price, quantity: $quantity, isAvailable: $isAvailable)';
  }

  factory Sauce.fromJson(Map<String, dynamic> json) => _$SauceFromJson(json);

  Map<String, dynamic> toJson() => _$SauceToJson(this);

  Sauce copyWith({
    String? name,
    int? price,
    int? quantity,
    bool? isAvailable,
  }) {
    return Sauce(
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }
}
