import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$myquery {
  Query$myquery({this.getFoods, required this.$__typename});

  @override
  factory Query$myquery.fromJson(Map<String, dynamic> json) =>
      _$Query$myqueryFromJson(json);

  final List<Query$myquery$getFoods>? getFoods;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$myqueryToJson(this);
  int get hashCode {
    final l$getFoods = getFoods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getFoods == null ? null : Object.hashAll(l$getFoods.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$myquery) || runtimeType != other.runtimeType)
      return false;
    final l$getFoods = getFoods;
    final lOther$getFoods = other.getFoods;
    if (l$getFoods != null && lOther$getFoods != null) {
      if (l$getFoods.length != lOther$getFoods.length) return false;
      for (int i = 0; i < l$getFoods.length; i++) {
        final l$getFoods$entry = l$getFoods[i];
        final lOther$getFoods$entry = lOther$getFoods[i];
        if (l$getFoods$entry != lOther$getFoods$entry) return false;
      }
    } else if (l$getFoods != lOther$getFoods) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$myquery on Query$myquery {
  Query$myquery copyWith(
          {List<Query$myquery$getFoods>? Function()? getFoods,
          String? $__typename}) =>
      Query$myquery(
          getFoods: getFoods == null ? this.getFoods : getFoods(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const documentNodeQuerymyquery = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'myquery'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getFoods'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'dips'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'price'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'category'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);

@JsonSerializable(explicitToJson: true)
class Query$myquery$getFoods {
  Query$myquery$getFoods(
      {this.dips,
      required this.category,
      required this.description,
      required this.$__typename});

  @override
  factory Query$myquery$getFoods.fromJson(Map<String, dynamic> json) =>
      _$Query$myquery$getFoodsFromJson(json);

  final List<Query$myquery$getFoods$dips>? dips;

  final String category;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$myquery$getFoodsToJson(this);
  int get hashCode {
    final l$dips = dips;
    final l$category = category;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dips == null ? null : Object.hashAll(l$dips.map((v) => v)),
      l$category,
      l$description,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$myquery$getFoods) || runtimeType != other.runtimeType)
      return false;
    final l$dips = dips;
    final lOther$dips = other.dips;
    if (l$dips != null && lOther$dips != null) {
      if (l$dips.length != lOther$dips.length) return false;
      for (int i = 0; i < l$dips.length; i++) {
        final l$dips$entry = l$dips[i];
        final lOther$dips$entry = lOther$dips[i];
        if (l$dips$entry != lOther$dips$entry) return false;
      }
    } else if (l$dips != lOther$dips) {
      return false;
    }

    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$myquery$getFoods on Query$myquery$getFoods {
  Query$myquery$getFoods copyWith(
          {List<Query$myquery$getFoods$dips>? Function()? dips,
          String? category,
          String? description,
          String? $__typename}) =>
      Query$myquery$getFoods(
          dips: dips == null ? this.dips : dips(),
          category: category == null ? this.category : category,
          description: description == null ? this.description : description,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$myquery$getFoods$dips {
  Query$myquery$getFoods$dips(
      {required this.name, required this.price, required this.$__typename});

  @override
  factory Query$myquery$getFoods$dips.fromJson(Map<String, dynamic> json) =>
      _$Query$myquery$getFoods$dipsFromJson(json);

  final String name;

  final double price;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$myquery$getFoods$dipsToJson(this);
  int get hashCode {
    final l$name = name;
    final l$price = price;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$price, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$myquery$getFoods$dips) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$myquery$getFoods$dips
    on Query$myquery$getFoods$dips {
  Query$myquery$getFoods$dips copyWith(
          {String? name, double? price, String? $__typename}) =>
      Query$myquery$getFoods$dips(
          name: name == null ? this.name : name,
          price: price == null ? this.price : price,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
