import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
	List<Item>? items;
	int? total;
	int? discount;
	String? paymentMethod;
	String? paymentId;
	String? userId;
	String? customeName;
	String? shopId;
	String? status;
	@JsonKey(name: '_id') 
	String? id;
	DateTime? createdAt;
	@JsonKey(name: '__v') 
	int? v;

	Order({
		this.items, 
		this.total, 
		this.discount, 
		this.paymentMethod, 
		this.paymentId, 
		this.userId, 
		this.customeName, 
		this.shopId, 
		this.status, 
		this.id, 
		this.createdAt, 
		this.v, 
	});

	@override
	String toString() {
		return 'Order(items: $items, total: $total, discount: $discount, paymentMethod: $paymentMethod, paymentId: $paymentId, userId: $userId, customeName: $customeName, shopId: $shopId, status: $status, id: $id, createdAt: $createdAt, v: $v)';
	}

	factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

	Map<String, dynamic> toJson() => _$OrderToJson(this);

	Order copyWith({
		List<Item>? items,
		int? total,
		int? discount,
		String? paymentMethod,
		String? paymentId,
		String? userId,
		String? customeName,
		String? shopId,
		String? status,
		String? id,
		DateTime? createdAt,
		int? v,
	}) {
		return Order(
			items: items ?? this.items,
			total: total ?? this.total,
			discount: discount ?? this.discount,
			paymentMethod: paymentMethod ?? this.paymentMethod,
			paymentId: paymentId ?? this.paymentId,
			userId: userId ?? this.userId,
			customeName: customeName ?? this.customeName,
			shopId: shopId ?? this.shopId,
			status: status ?? this.status,
			id: id ?? this.id,
			createdAt: createdAt ?? this.createdAt,
			v: v ?? this.v,
		);
	}
}
