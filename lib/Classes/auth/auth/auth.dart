import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable()
class Auth {
	String? accessToken;

	Auth({this.accessToken});

	@override
	String toString() => 'Auth(accessToken: $accessToken)';

	factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

	Map<String, dynamic> toJson() => _$AuthToJson(this);

	Auth copyWith({
		String? accessToken,
	}) {
		return Auth(
			accessToken: accessToken ?? this.accessToken,
		);
	}
}
