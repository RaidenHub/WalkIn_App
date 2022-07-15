import 'package:json_annotation/json_annotation.dart';

part 'sauce.g.dart';

@JsonSerializable()
class Sauce {
	dynamic isAvailable;
	String? name;
	int? price;
	int? quantity;

	Sauce({this.isAvailable, this.name, this.price, this.quantity});

	@override
	String toString() {
		return 'Sauce(isAvailable: $isAvailable, name: $name, price: $price, quantity: $quantity)';
	}

	factory Sauce.fromJson(Map<String, dynamic> json) => _$SauceFromJson(json);

	Map<String, dynamic> toJson() => _$SauceToJson(this);
}
