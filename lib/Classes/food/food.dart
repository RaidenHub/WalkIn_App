import 'package:json_annotation/json_annotation.dart';

import 'dip.dart';
import 'extra.dart';
import 'sauce.dart';
import 'topping.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
	@JsonKey(name: '_id') 
	String? id;
	String? category;
	List<Dip>? dips;
	String? description;
	int? discount;
	List<Extra>? extras;
	String? image;
	String? foodType;
	String? name;
	int? numberOfFreeExtras;
	int? numberOfFreeDips;
	int? numberOfFreeSauces;
	int? numberOfFreeToppings;
	int? price;
	String? status;
	List<Sauce>? sauces;
	List<Topping>? toppings;

	Food({
		this.id, 
		this.category, 
		this.dips, 
		this.description, 
		this.discount, 
		this.extras, 
		this.image, 
		this.foodType, 
		this.name, 
		this.numberOfFreeExtras, 
		this.numberOfFreeDips, 
		this.numberOfFreeSauces, 
		this.numberOfFreeToppings, 
		this.price, 
		this.status, 
		this.sauces, 
		this.toppings, 
	});

	@override
	String toString() {
		return 'Food(id: $id, category: $category, dips: $dips, description: $description, discount: $discount, extras: $extras, image: $image, foodType: $foodType, name: $name, numberOfFreeExtras: $numberOfFreeExtras, numberOfFreeDips: $numberOfFreeDips, numberOfFreeSauces: $numberOfFreeSauces, numberOfFreeToppings: $numberOfFreeToppings, price: $price, status: $status, sauces: $sauces, toppings: $toppings)';
	}

	factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

	Map<String, dynamic> toJson() => _$FoodToJson(this);
}
