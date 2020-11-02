import 'package:faunadb_http/faunadb_http.dart';
import 'package:faunadb_http/query.dart';

void main(List<String> arguments) async {
  final config = FaunaConfig.build(
    secret: arguments[0],
  );

  final client = FaunaClient(config);

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

  final callDoubleFunction = Call(Function_('double'), 2);

  final paginateUsers = Paginate(
    Match(Index('user-by-name'), terms: ['Gavan Singh']),
  );

  final readUser = Get(Ref(Collection('users'), '281080202238362125'));

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

  final response = await client.query(deleteUser);

  if (response.hasErrors) {
    print('error=>\n${response.errors}');
  } else {
    print('response=>\n${response.resource}');
  }

  client.close();
}
