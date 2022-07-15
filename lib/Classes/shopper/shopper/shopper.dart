import 'package:json_annotation/json_annotation.dart';

part 'shopper.g.dart';

@JsonSerializable()
class Shopper {
	@JsonKey(name: '_id') 
	String? id;
	String? address;
	String? category;
	String? city;
	String? country;
	String? email;
	bool? isActive;
	bool? isDeleted;
	String? name;
	String? phone;
	String? state;
	String? subCategory;
	String? userId;
	String? zip;

	Shopper({
		this.id, 
		this.address, 
		this.category, 
		this.city, 
		this.country, 
		this.email, 
		this.isActive, 
		this.isDeleted, 
		this.name, 
		this.phone, 
		this.state, 
		this.subCategory, 
		this.userId, 
		this.zip, 
	});

	@override
	String toString() {
		return 'Shopper(id: $id, address: $address, category: $category, city: $city, country: $country, email: $email, isActive: $isActive, isDeleted: $isDeleted, name: $name, phone: $phone, state: $state, subCategory: $subCategory, userId: $userId, zip: $zip)';
	}

	factory Shopper.fromJson(Map<String, dynamic> json) {
		return _$ShopperFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ShopperToJson(this);

	Shopper copyWith({
		String? id,
		String? address,
		String? category,
		String? city,
		String? country,
		String? email,
		bool? isActive,
		bool? isDeleted,
		String? name,
		String? phone,
		String? state,
		String? subCategory,
		String? userId,
		String? zip,
	}) {
		return Shopper(
			id: id ?? this.id,
			address: address ?? this.address,
			category: category ?? this.category,
			city: city ?? this.city,
			country: country ?? this.country,
			email: email ?? this.email,
			isActive: isActive ?? this.isActive,
			isDeleted: isDeleted ?? this.isDeleted,
			name: name ?? this.name,
			phone: phone ?? this.phone,
			state: state ?? this.state,
			subCategory: subCategory ?? this.subCategory,
			userId: userId ?? this.userId,
			zip: zip ?? this.zip,
		);
	}
}
