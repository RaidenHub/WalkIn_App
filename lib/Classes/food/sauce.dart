import 'package:json_annotation/json_annotation.dart';

part 'sauce.g.dart';

@JsonSerializable()
class Sauce {
  String? name;
  int? price;

  Sauce({this.name, this.price});

  @override
  String toString() => 'Sauce(name: $name, price: $price)';

  factory Sauce.fromJson(Map<String, dynamic> json) => _$SauceFromJson(json);

  Map<String, dynamic> toJson() => _$SauceToJson(this);

  Sauce copyWith({
    String? name,
    int? price,
  }) {
    return Sauce(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }
}
