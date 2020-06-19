import 'package:faunadb_http/faunadb_http.dart';

void main(List<String> arguments) {
  final config = FaunaDBConfig.create(secret: "your_secret_here");
  final client = FaunaDBClient(config);

  client.query({
    "paginate": {
      "match": {"index": "all_products"}
    }
  }).then((value) {
    print(value);
    client.close();
  });
}
