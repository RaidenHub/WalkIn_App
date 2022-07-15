import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
	@JsonKey(name: '_id') 
	String? id;
	String? userId;
	String? email;
	dynamic address;
	dynamic city;
	dynamic country;
	dynamic isActive;
	dynamic isDeleted;
	dynamic phone;
	dynamic state;
	dynamic name;
	dynamic zip;

	User({
		this.id, 
		this.userId, 
		this.email, 
		this.address, 
		this.city, 
		this.country, 
		this.isActive, 
		this.isDeleted, 
		this.phone, 
		this.state, 
		this.name, 
		this.zip, 
	});

	@override
	String toString() {
		return 'User(id: $id, userId: $userId, email: $email, address: $address, city: $city, country: $country, isActive: $isActive, isDeleted: $isDeleted, phone: $phone, state: $state, name: $name, zip: $zip)';
	}

	factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

	Map<String, dynamic> toJson() => _$UserToJson(this);

	User copyWith({
		String? id,
		String? userId,
		String? email,
		dynamic address,
		dynamic city,
		dynamic country,
		dynamic isActive,
		dynamic isDeleted,
		dynamic phone,
		dynamic state,
		dynamic name,
		dynamic zip,
	}) {
		return User(
			id: id ?? this.id,
			userId: userId ?? this.userId,
			email: email ?? this.email,
			address: address ?? this.address,
			city: city ?? this.city,
			country: country ?? this.country,
			isActive: isActive ?? this.isActive,
			isDeleted: isDeleted ?? this.isDeleted,
			phone: phone ?? this.phone,
			state: state ?? this.state,
			name: name ?? this.name,
			zip: zip ?? this.zip,
		);
	}
}
