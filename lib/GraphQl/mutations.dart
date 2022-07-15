import 'package:graphql/client.dart';

const String loginmutation = r'''
mutation MyMutation($email: String , $password: String ) {
  login(email: $email, password: $password) {
    accessToken
  }
}''';

login(String email, String password) {
  return MutationOptions(
    document: gql(loginmutation),
    variables: <String, dynamic>{
      'email': email,
      'password': password,
    },
  );
}
