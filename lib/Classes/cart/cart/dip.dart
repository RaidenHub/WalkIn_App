import 'package:json_annotation/json_annotation.dart';

part 'dip.g.dart';

@JsonSerializable()
class Dip {
  dynamic isAvailable;
  String? name;
  int? price;
  int? quantity;

  Dip({this.isAvailable, this.name, this.price, this.quantity});

  @override
  String toString() {
    return 'Dip(isAvailable: $isAvailable, name: $name, price: $price, quantity: $quantity)';
  }

  factory Dip.fromJson(Map<String, dynamic> json) => _$DipFromJson(json);

  Map<String, dynamic> toJson() => _$DipToJson(this);
}
