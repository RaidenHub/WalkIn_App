class Food {
  String? sId;
  String? category;
  List<Dips>? dips;
  String? description;
  int? discount;
  List<Extras>? extras;
  String? image;
  String? foodType;
  String? name;
  int? numberOfFreeExtras;
  int? numberOfFreeDips;
  int? numberOfFreeSauces;
  int? numberOfFreeToppings;
  int? price;
  String? status;
  List<Sauces>? sauces;
  List<Toppings>? toppings;

  Food(
      {this.sId,
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
      this.toppings});

  Food.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    category = json['category'];
    if (json['dips'] != null) {
      dips = <Dips>[];
      json['dips'].forEach((v) {
        dips!.add(new Dips.fromJson(v));
      });
    }
    description = json['description'];
    discount = json['discount'];
    if (json['extras'] != null) {
      extras = <Extras>[];
      json['extras'].forEach((v) {
        extras!.add(new Extras.fromJson(v));
      });
    }
    image = json['image'];
    foodType = json['foodType'];
    name = json['name'];
    numberOfFreeExtras = json['numberOfFreeExtras'];
    numberOfFreeDips = json['numberOfFreeDips'];
    numberOfFreeSauces = json['numberOfFreeSauces'];
    numberOfFreeToppings = json['numberOfFreeToppings'];
    price = json['price'];
    status = json['status'];
    if (json['sauces'] != null) {
      sauces = <Sauces>[];
      json['sauces'].forEach((v) {
        sauces!.add(new Sauces.fromJson(v));
      });
    }
    if (json['toppings'] != null) {
      toppings = <Toppings>[];
      json['toppings'].forEach((v) {
        toppings!.add(new Toppings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['category'] = this.category;
    if (this.dips != null) {
      data['dips'] = this.dips!.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    data['discount'] = this.discount;
    if (this.extras != null) {
      data['extras'] = this.extras!.map((v) => v.toJson()).toList();
    }
    data['image'] = this.image;
    data['foodType'] = this.foodType;
    data['name'] = this.name;
    data['numberOfFreeExtras'] = this.numberOfFreeExtras;
    data['numberOfFreeDips'] = this.numberOfFreeDips;
    data['numberOfFreeSauces'] = this.numberOfFreeSauces;
    data['numberOfFreeToppings'] = this.numberOfFreeToppings;
    data['price'] = this.price;
    data['status'] = this.status;
    if (this.sauces != null) {
      data['sauces'] = this.sauces!.map((v) => v.toJson()).toList();
    }
    if (this.toppings != null) {
      data['toppings'] = this.toppings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dips {
  Null? isAvailable;
  String? name;
  int? price;

  Dips({this.isAvailable, this.name, this.price});

  Dips.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this.isAvailable;
    data['name'] = this.name;
    data['price'] = this.price;
    return data;
  }
}

class Extras {
  Null? isAvailable;
  String? name;
  int? price;

  Extras({this.isAvailable, this.name, this.price});

  Extras.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this.isAvailable;
    data['name'] = this.name;
    data['price'] = this.price;
    return data;
  }
}

class Sauces {
  String? name;
  Null? isAvailable;
  int? price;

  Sauces({this.name, this.isAvailable, this.price});

  Sauces.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isAvailable = json['isAvailable'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['isAvailable'] = this.isAvailable;
    data['price'] = this.price;
    return data;
  }
}

class Toppings {
  Null? isAvailable;
  String? name;
  int? price;

  Toppings({this.isAvailable, this.name, this.price});

  Toppings.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this.isAvailable;
    data['name'] = this.name;
    data['price'] = this.price;
    return data;
  }
}
