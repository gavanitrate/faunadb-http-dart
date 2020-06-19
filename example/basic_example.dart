import 'package:faunadb_http/faunadb_http.dart';

/*
* FaunaDB secret should be the first argument
* `dart ./basic_example.dart <you_secret_here>`
* */
void main(List<String> arguments) async {
  final config = FaunaDBConfig.build(secret: arguments[0]);
  // Or if you want to put your secret straight in your code
  // final config = FaunaDBConfig.build(secret: "<you_secret_here>");
  final client = FaunaDBClient(config);

  var value = await client.query({
    "paginate": {
      "match": {"index": "all_products"}
    }
  });

  print(value);

  client.close();
}
