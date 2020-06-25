import 'dart:convert';

import 'package:faunadb_http/query.dart';
import 'package:http/http.dart';

import './FaunaConfig.dart';

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
  Future<dynamic> query(Expr expression, {FaunaConfig options}) {
    return _httpClient
        .post(
          config.baseUrl,
          headers: config.requestHeaders,
          body: json.encode(expression),
        )
        .timeout(config.timeout)
        .then((Response response) => json.decode(response.body));
  }

  /// Closes and releases all client resources.
  void close() {
    _httpClient.close();
  }
}
