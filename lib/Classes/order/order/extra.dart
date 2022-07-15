import 'package:json_annotation/json_annotation.dart';

part 'extra.g.dart';

@JsonSerializable()
class Extra {
	String? name;
	int? price;
	int? quantity;
	bool? isAvailable;

	Extra({this.name, this.price, this.quantity, this.isAvailable});

	@override
	String toString() {
		return 'Extra(name: $name, price: $price, quantity: $quantity, isAvailable: $isAvailable)';
	}

	factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);

	Map<String, dynamic> toJson() => _$ExtraToJson(this);

	Extra copyWith({
		String? name,
		int? price,
		int? quantity,
		bool? isAvailable,
	}) {
		return Extra(
			name: name ?? this.name,
			price: price ?? this.price,
			quantity: quantity ?? this.quantity,
			isAvailable: isAvailable ?? this.isAvailable,
		);
	}
}
