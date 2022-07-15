import 'package:json_annotation/json_annotation.dart';

part 'extra.g.dart';

@JsonSerializable()
class Extra {
	dynamic isAvailable;
	String? name;
	int? price;
	int? quantity;

	Extra({this.isAvailable, this.name, this.price, this.quantity});

	@override
	String toString() {
		return 'Extra(isAvailable: $isAvailable, name: $name, price: $price, quantity: $quantity)';
	}

	factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);

	Map<String, dynamic> toJson() => _$ExtraToJson(this);
}
