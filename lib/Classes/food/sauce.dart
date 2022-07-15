import 'package:json_annotation/json_annotation.dart';

part 'sauce.g.dart';

@JsonSerializable()
class Sauce {
	String? name;
	dynamic isAvailable;
	int? price;

	Sauce({this.name, this.isAvailable, this.price});

	@override
	String toString() {
		return 'Sauce(name: $name, isAvailable: $isAvailable, price: $price)';
	}

	factory Sauce.fromJson(Map<String, dynamic> json) => _$SauceFromJson(json);

	Map<String, dynamic> toJson() => _$SauceToJson(this);
}
