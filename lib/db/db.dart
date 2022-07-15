import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:walk_in/Classes/shopper/shopper/shopper.dart';
import 'package:walk_in/db/authToken.dart';

import '../Classes/auth/auth/auth.dart';
import '../Classes/user/user/user.dart';
import '../GraphQl/client.dart';
import '../GraphQl/mutations.dart';
import '../jsonToDart/food.dart';

class DatabaseService {
  Future<bool> loginFun(
      String email, String password, BuildContext context) async {
    try {
      var result = await client.mutate(login(email, password));
      var result1 = Auth.fromJson(result.data!['login']);
      final user = Provider.of<AuthToken>(context, listen: false);
      user.setToken(result1.accessToken!);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<Food?>> getFoods() async {
    try {
      var result = await client.query(getFoodQuery);
      var foods = result.data!['getFoods']
          .map<Food>((fo) => Food.fromJson(fo))
          .toList();
      print(foods);
      return foods;
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<Shopper?>> getShops() async {
    try {
      var result = await client.query(getShopQuery);
      var shops = result.data!['getShoppers']
          .map<Shopper>((shop) => Shopper.fromJson(shop))
          .toList();
      return shops;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
