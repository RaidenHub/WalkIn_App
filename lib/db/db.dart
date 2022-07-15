import '../GraphQl/client.dart';
import '../jsonToDart/food.dart';

class DatabaseService {
  Future<List<Food>?> getFoods() async {
    try {
      var result = await client.query(options);
      var foods =
          result.data!['getFoods'].map((fo) => Food.fromJson(fo)).toList();
      print(foods);
      return foods;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
