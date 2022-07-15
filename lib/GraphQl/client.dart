import 'package:graphql/client.dart';

String url = 'https://remagen.stepzen.net/api/rest-example/__graphql';

final _httpLink = HttpLink(url, defaultHeaders: {
  "Authorization":
      "APIKey remagen::stepzen.net+1000::35c836092b893933f825eca84cba5c70159aa998f5ea4c731c4b57e07b8af42a"
});

// final _authLink = AuthLink(
//   getToken: () =>
//       'APIKey remagen::stepzen.net+1000::35c836092b893933f825eca84cba5c70159aa998f5ea4c731c4b57e07b8af42a',
// );

Link _link = _httpLink;

final GraphQLClient client = GraphQLClient(
  /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
  cache: GraphQLCache(),
  link: _link,
);

const String getOrderQueryString = r'''
query MyQuery( $token: String ) {
  getOrder(token: $token) {
    _id
    createdAt
    customeName
    total
    status
    paymentMethod
    discount
    items {
      _id
      dips {
        name
        price
      }
      extras {
        name
        price
      }
      price
      productId
      quantity
      sauces {
        name
        price
      }
      shopId
      toppings {
        price
        name
      }
      userId
    }
    paymentId
  }
}

''';
const String getCartQueryString = r'''
query MyQuery($token: String ) {
  getCart(token: $token) {
    _id
    price
    productId
    quantity
    shopId
    userId
  }
}
''';
const String getShopQueryString = r'''
query MyQuery {
  getShoppers {
    name
    _id
    image
    address
    city
    category
    country
    email
    isActive
    isDeleted
    phone
    state
    subCategory
    userId
    zip
  }
}
''';
const String getFoodQueryString = r'''
query MyQuery {
  getFoods {
    _id
    category
    dips {
      isAvailable
      name
      price
    }
    description
    discount
    extras {
      isAvailable
      name
      price
    }
    image
    foodType
    name
    numberOfFreeExtras
    numberOfFreeDips
    numberOfFreeSauces
    numberOfFreeToppings
    price
    status
    sauces {
      name
      isAvailable
      price
    }
    toppings {
      isAvailable
      name
      price
    }
  }
}
''';

final QueryOptions getFoodQuery = QueryOptions(
  document: gql(getFoodQueryString),
  variables: <String, dynamic>{
    // 'nRepositories': nRepositories,
  },
);

final QueryOptions getShopQuery = QueryOptions(
  document: gql(getShopQueryString),
  variables: <String, dynamic>{
    // 'nRepositories': nRepositories,
  },
);

final QueryOptions getOrderQuery = QueryOptions(
  document: gql(getOrderQueryString),
  variables: <String, dynamic>{
    // 'nRepositories': nRepositories,
  },
);

final QueryOptions getCartQuery = QueryOptions(
  document: gql(getCartQueryString),
  variables: <String, dynamic>{
    // 'nRepositories': nRepositories,
  },
);

// final QueryResult result = await client.query(options);

// if (result.hasException) {
//   print(result.exception.toString());
// }

// final List<dynamic> repositories =
//     result.data['viewer']['repositories']['nodes'] as List<dynamic>;
