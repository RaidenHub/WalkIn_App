import 'package:graphql/client.dart';

String url = 'https://remagen.stepzen.net/api/rest-example/__graphql';

final _httpLink = HttpLink(url);

final _authLink = AuthLink(
  getToken: () =>
      'APIKey remagen::stepzen.net+1000::35c836092b893933f825eca84cba5c70159aa998f5ea4c731c4b57e07b8af42a',
);

Link _link = _authLink.concat(_httpLink);

final GraphQLClient client = GraphQLClient(
  /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
  cache: GraphQLCache(),
  link: _link,
);

const String myquery = r'''
query myquery{
  getFoods {
    dips {
      name
      price
    }
    category
    description
  }
}
''';

final QueryOptions options = QueryOptions(
  document: gql(myquery),
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
