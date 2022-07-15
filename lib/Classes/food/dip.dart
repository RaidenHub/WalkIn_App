import 'package:json_annotation/json_annotation.dart';

part 'dip.g.dart';

@JsonSerializable()
class Dip {
  String? name;
  int? price;

  Dip({this.name, this.price});

  @override
  String toString() => 'Dip(name: $name, price: $price)';

  factory Dip.fromJson(Map<String, dynamic> json) => _$DipFromJson(json);

  Map<String, dynamic> toJson() => _$DipToJson(this);

  Dip copyWith({
    String? name,
    int? price,
  }) {
    return Dip(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }
}
