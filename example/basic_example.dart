import 'package:faunadb_http/faunadb_http.dart';
import 'package:faunadb_http/query.dart';

/*
* FaunaDB secret should be the first argument
* `dart ./basic_example.dart <your_secret_here>`
* */
void main(List<String> arguments) async {
  final config = FaunaConfig.build(
    secret: arguments[0],
  );
  // Or if you want to put your secret straight in your code
  // final config = FaunaDBConfig.build(secret: "<your_secret_here>");
  final client = FaunaClient(config);

//  final query = Paginate(
//    Match(
//      Index("customers_by_firstname"),
//      terms: ["Skipper"],
//    ),
//  );
//  print(query);
//  final response = await client.query(query);
//  print(response);

  final query = Ref(Collection("users"), "2934832948");
  print(query);
  final response = await client.query(query);
  print(response.resource);
  print(Ref.fromJson(response.resource));

  client.close();
}
