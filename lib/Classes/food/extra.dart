import 'package:json_annotation/json_annotation.dart';

part 'extra.g.dart';

@JsonSerializable()
class Extra {
  String? name;
  int? price;

  Extra({this.name, this.price});

  @override
  String toString() => 'Extra(name: $name, price: $price)';

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraToJson(this);

  Extra copyWith({
    String? name,
    int? price,
  }) {
    return Extra(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }
}
