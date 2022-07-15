import 'package:json_annotation/json_annotation.dart';

part 'shopper.g.dart';

@JsonSerializable()
class Shopper {
  @JsonKey(name: '_id')
  String? id;
  String? userId;
  String? image;
  String? email;
  String? name;
  String? phone;
  String? address;
  String? city;
  String? state;
  String? zip;
  String? country;
  bool? isActive;
  bool? isDeleted;
  String? category;
  String? subCategory;
  @JsonKey(name: '__v')
  int? v;

  Shopper({
    this.id,
    this.userId,
    this.image,
    this.email,
    this.name,
    this.phone,
    this.address,
    this.city,
    this.state,
    this.zip,
    this.country,
    this.isActive,
    this.isDeleted,
    this.category,
    this.subCategory,
    this.v,
  });

  @override
  String toString() {
    return 'Shopper(id: $id, userId: $userId, image: $image, email: $email, name: $name, phone: $phone, address: $address, city: $city, state: $state, zip: $zip, country: $country, isActive: $isActive, isDeleted: $isDeleted, category: $category, subCategory: $subCategory, v: $v)';
  }

  factory Shopper.fromJson(Map<String, dynamic> json) {
    return _$ShopperFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ShopperToJson(this);

  Shopper copyWith({
    String? id,
    String? userId,
    String? image,
    String? email,
    String? name,
    String? phone,
    String? address,
    String? city,
    String? state,
    String? zip,
    String? country,
    bool? isActive,
    bool? isDeleted,
    String? category,
    String? subCategory,
    int? v,
  }) {
    return Shopper(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      image: image ?? this.image,
      email: email ?? this.email,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      zip: zip ?? this.zip,
      country: country ?? this.country,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      v: v ?? this.v,
    );
  }
}
