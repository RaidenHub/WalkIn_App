import 'package:json_annotation/json_annotation.dart';
part 'food.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$toppingsInput {
  Input$toppingsInput({required this.name, required this.price});

  @override
  factory Input$toppingsInput.fromJson(Map<String, dynamic> json) =>
      _$Input$toppingsInputFromJson(json);

  final String name;

  final double price;

  Map<String, dynamic> toJson() => _$Input$toppingsInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$price = price;
    return Object.hashAll([l$name, l$price]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$toppingsInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    return true;
  }

  Input$toppingsInput copyWith({String? name, double? price}) =>
      Input$toppingsInput(
          name: name == null ? this.name : name,
          price: price == null ? this.price : price);
}

@JsonSerializable(explicitToJson: true)
class Input$dipsInput {
  Input$dipsInput({required this.name, required this.price});

  @override
  factory Input$dipsInput.fromJson(Map<String, dynamic> json) =>
      _$Input$dipsInputFromJson(json);

  final String name;

  final double price;

  Map<String, dynamic> toJson() => _$Input$dipsInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$price = price;
    return Object.hashAll([l$name, l$price]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$dipsInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    return true;
  }

  Input$dipsInput copyWith({String? name, double? price}) => Input$dipsInput(
      name: name == null ? this.name : name,
      price: price == null ? this.price : price);
}

@JsonSerializable(explicitToJson: true)
class Input$saucesInput {
  Input$saucesInput({required this.name, required this.price});

  @override
  factory Input$saucesInput.fromJson(Map<String, dynamic> json) =>
      _$Input$saucesInputFromJson(json);

  final String name;

  final double price;

  Map<String, dynamic> toJson() => _$Input$saucesInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$price = price;
    return Object.hashAll([l$name, l$price]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$saucesInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    return true;
  }

  Input$saucesInput copyWith({String? name, double? price}) =>
      Input$saucesInput(
          name: name == null ? this.name : name,
          price: price == null ? this.price : price);
}

@JsonSerializable(explicitToJson: true)
class Input$extrasInput {
  Input$extrasInput({required this.name, required this.price});

  @override
  factory Input$extrasInput.fromJson(Map<String, dynamic> json) =>
      _$Input$extrasInputFromJson(json);

  final String name;

  final double price;

  Map<String, dynamic> toJson() => _$Input$extrasInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$price = price;
    return Object.hashAll([l$name, l$price]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$extrasInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    return true;
  }

  Input$extrasInput copyWith({String? name, double? price}) =>
      Input$extrasInput(
          name: name == null ? this.name : name,
          price: price == null ? this.price : price);
}

const possibleTypesMap = {};
