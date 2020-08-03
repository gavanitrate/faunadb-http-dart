import 'package:faunadb_http/faunadb_http.dart';
import 'package:faunadb_http/query.dart';

/*
* FaunaDB secret should be the first argument
* `dart ./main.dart <your_secret_here>`
* */
void main(List<String> arguments) async {
  final config = FaunaConfig.build(
    secret: arguments[0],
  );
  // Or if you want to put your secret straight in your code
  // final config = FaunaDBConfig.build(secret: '<your_secret_here>');
  final client = FaunaClient(config);

  var query = Paginate(
    Collections(),
    size: 2,
  );
  print('query=>\n${query}');

  final firstPage = await client.query(query);
  final data = firstPage.asPage();
  print('response=>\n${data}');

  client.close();
}
