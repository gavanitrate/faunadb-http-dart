# faunadb-http

A pure Dart implementation of a [FaunaDB][faunadb] client. This library also provides query classes that closely mimic
FQL functions.

[faunadb]: https://fauna.com/

## Usage

### Basic Example

```dart
import 'package:faunadb_http/faunadb_http.dart';
import 'package:faunadb_http/query.dart';

void main() async {
  final config = FaunaConfig.build(
    secret: '<your_secret_here>',
  );
  final client = FaunaClient(config);

  final query = Paginate(Match(Index('all_customers')));

  final result = await client.query(query);
  print(result);

  client.close();
}
```

### Writing Queries

After importing the query classes from this package
(as in the example above), your queries will look almost identical to [FQL][fql].

Check out the [FQL Cheat Sheet][cheat_sheet] to see all valid FQL functions.

[fql]: https://docs.fauna.com/fauna/current/api/fql/

[cheat_sheet]: https://docs.fauna.com/fauna/current/api/fql/cheat_sheet

#### Example Queries

```dart
// segment from example/crud.dart

//
// create
//

final createCollection = CreateCollection(Obj({'name': 'users'}));

final createDocument = Create(
  Collection('users'),
  Obj({
    'data': {'name': 'Gavan Singh'}
  }),
);

final createIndex = CreateIndex(Obj({
  'name': 'user-by-name',
  'source': Collection('users'),
  'terms': [
    {
      'field': ['data', 'name']
    }
  ]
}));

final createFunction = CreateFunction(Obj({
  'name': 'double',
  'body': Query(Lambda('x', Add([Var('x'), Var('x')])))
}));

//
// read
//

final callDoubleFunction = Call(Function_('double'), arguments: 2);

final paginateUsers = Paginate(
  Match(Index('user-by-name'), terms: ['Gavan Singh']),
);

final readUser = Get(Ref(Collection('users'), '281080202238362125'));

final readAllUsers = Map_(
  Paginate(Match(Index('all_Users'))),
  Lambda(
    'userRef',
    Let(
      {
        'userDoc': Get(Var('userRef')),
      },
      Obj(
        {
          'id': Select(['ref', 'id'], Var('userDoc')),
          'name': Select(['data', 'name'], Var('userDoc')),
        },
      ),
    ),
  ),
);

final paginateCollections = Paginate(Collections());

//
// update
//

final updateUser = Update(
  Ref(Collection('users'), '281080202238362125'),
  Obj({
    'data': {'isCool': true}
  }),
);

//
// delete
//

final deleteUser = Delete(Ref(Collection('users'), '281080202238362125'));

```

### Query Differences

There are some cases where your queries will have to be written slightly differently from pure FQL. Here are examples of
each type of difference.

- Optional FQL arguments are named arguments in Dart.
    - `Repeat('x', number: 10)`
    - `Paginate(Collections(), size: 2)`

- FQL functions with a variable number of arguments (such as Sum, GT etc.) accept a Dart List instead.
    - `Add([1, Var('x')])`

- Some FQL functions and arguments are reserved keywords in Dart; simply add a trailing underscore to them.
    - `Map` becomes `Map_`
    - `Function` becomes `Function_`
    - `default` becomes `default_`
