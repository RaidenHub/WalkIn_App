import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:walk_in/Classes/shopper/shopper/shopper.dart';
import 'package:walk_in/db/authToken.dart';

import '../Classes/auth/auth/auth.dart';
import '../Classes/cart/cart/cart.dart';
import '../Classes/food/food.dart';
import '../Classes/user/user/user.dart';
import '../GraphQl/client.dart';
import '../GraphQl/mutations.dart';

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

  Future<List<Food?>> getByShopId(String shopId) async {
    print(shopId);
    try {
      var result = await client.query(getFoodByShopIdQuery(shopId));
      var foods = result.data!['getFoodsShopId']
          .map<Food>((fo) => Food.fromJson(fo))
          .toList();
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

  // getCart which takes token
  Future<List<Cart?>> getCartS(BuildContext context) async {
    final user = Provider.of<AuthToken>(context, listen: false);
    String token = user.token;
    try {
      var result = await client.query(getCartQuery(token));
      print(result);
      var foods =
          result.data!['getCart'].map<Cart>((fo) => Cart.fromJson(fo)).toList();
      return foods;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
