import 'package:json_annotation/json_annotation.dart';

part 'topping.g.dart';

@JsonSerializable()
class Topping {
  String? name;
  int? price;

  Topping({this.name, this.price});

  @override
  String toString() => 'Topping(name: $name, price: $price)';

  factory Topping.fromJson(Map<String, dynamic> json) {
    return _$ToppingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToppingToJson(this);

  Topping copyWith({
    String? name,
    int? price,
  }) {
    return Topping(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }
}
