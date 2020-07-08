# faunadb-http

A pure Dart implementation of a [FaunaDB][faunadb] client.

[faunadb]: https://fauna.com/ 

## Usage

```dart
import 'package:faunadb_http/faunadb_http.dart';
import 'package:faunadb_http/query.dart';

void main() async {
  final config = FaunaConfig.build(
    secret: "<your_secret_here>",
  );
  final client = FaunaClient(config);

  final query = Paginate(Match(Index("all_customers")));
  
  final result = await client.query(query);
  print(result);

  client.close();
}
```