import 'dart:convert';

import 'package:http/http.dart';

import './FaunaConfig.dart';
import 'fql/result.dart';

/// The Dart native client for FaunaDB.
///
/// Query methods are asynchronous and return a [Future].
///
/// The [close()] method must be called in order to release
/// the FaunaClient I/O resources.
class FaunaClient {
  final _httpClient = Client();

  /// Client configuration
  final FaunaConfig config;

  /// Creates a FaunaClient. A valid [config] is required.
  FaunaClient(this.config);

  /// Executes a query via the FaunaDB Query API.
  ///
  /// [expression] must be either:
  ///  - composed using functions from the query classes
  ///  - serializable JSON representation of an FQL query.
  ///
  /// Queries built using the query classes look very similar to
  /// real FQL. It was an aim to mimic FQL function names and arguments
  /// as closely as possible.
  /// Docs on all FQL functions can be found [here][fql-cheat].
  ///
  /// [fql-cheat]: https://docs.fauna.com/fauna/current/api/fql/cheat_sheet
  ///
  /// Example query [expression]:
  ///
  /// ```
  /// Paginate(Match(Index('all_customers')))
  /// ```
  ///
  /// However some notable differences are:
  ///  - Optional FQL arguments are named arguments in Dart.
  ///  e.g. `Repeat('x', number: 10)`
  ///  - FQL functions with a variable number of arguments
  ///  (such as Sum, GT etc.)
  ///  accept a Dart List instead.
  ///  - Some FQL functions and arguments are reserved keywords in Dart;
  ///  simply add a trailing underscore to them
  ///  (`Map` -> `Map_`,
  ///  `Function` -> `Function_`,
  ///  `default` -> `default_`)
  ///
  ///
  ///
  /// Any value serializable to valid JSON can also be passed
  /// as an [expression].
  ///
  /// Docs on JSON query syntax can be found [here][query-docs].
  ///
  /// [query-docs]: https://app.fauna.com/documentation/intro/querying#query-syntax
  ///
  /// Example JSON [expression]:
  /// ```
  /// {
  ///   'paginate': {
  ///     'match': {'index': 'all_products'},
  ///   }
  /// }
  /// ```
  ///
  /// Throws [TimeoutException] if query response is not received within
  /// [config.timeout].
  Future<FaunaResponse> query(Object expression, {FaunaConfig options}) {
    final config = (options == null ? this.config : this.config.merge(options));
    return _httpClient
        .post(
          config.baseUrl,
          headers: config.requestHeaders,
          body: json.encode(expression),
        )
        .timeout(config.timeout)
        .then((Response response) => FaunaResponse.fromBody(response.body));
  }

  /// Closes and releases all client resources.
  void close() {
    _httpClient.close();
  }
}
