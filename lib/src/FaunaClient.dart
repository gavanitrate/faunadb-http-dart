import 'dart:convert';

import 'package:http/http.dart';

import './FaunaConfig.dart';
import 'fql/expr.dart';
import 'fql/result.dart';

/// The Dart native client for FaunaDB.
///
/// Query methods are asynchronous and return a [Future].
///
/// The [close()] method must be called in order to release the FaunaClient I/O resources.
class FaunaClient {
  final _httpClient = Client();

  /// Client configuration
  final FaunaConfig config;

  /// Creates a FaunaClient. A valid [config] is required.
  FaunaClient(this.config);

  /// Executes a query via the FaunaDB Query API.
  ///
  /// [expression] must be serializable JSON representation of an FQL query.
  ///
  /// Docs on query syntax can be found [here][query-docs].
  /// Example [expression]
  /// ```
  /// {
  ///   "paginate": {
  ///     "match": {"index": "all_products"},
  ///   }
  /// }
  /// ```
  ///
  /// [query-docs]: https://app.fauna.com/documentation/intro/querying#query-syntax
  ///
  /// Throws [TimeoutException] if query response is not received within
  /// [config.timeout].
  Future<QueryResult> query(Expr expression, {FaunaConfig options}) {
    final config = (options == null ? this.config : this.config.merge(options));
    return _httpClient
        .post(
          config.baseUrl,
          headers: config.requestHeaders,
          body: json.encode(expression),
        )
        .timeout(config.timeout)
        .then((Response response) => QueryResult.fromBody(response.body));
  }

  /// Closes and releases all client resources.
  void close() {
    _httpClient.close();
  }
}
