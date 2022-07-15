import 'package:json_annotation/json_annotation.dart';

part 'dip.g.dart';

@JsonSerializable()
class Dip {
  String? name;
  int? price;
  int? quantity;
  bool? isAvailable;

  Dip({this.name, this.price, this.quantity, this.isAvailable});

  @override
  String toString() {
    return 'Dip(name: $name, price: $price, quantity: $quantity, isAvailable: $isAvailable)';
  }

  factory Dip.fromJson(Map<String, dynamic> json) => _$DipFromJson(json);

  Map<String, dynamic> toJson() => _$DipToJson(this);

  Dip copyWith({
    String? name,
    int? price,
    int? quantity,
    bool? isAvailable,
  }) {
    return Dip(
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }
}
