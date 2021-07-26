import 'dart:convert';

enum Scheme { HTTP, HTTPS }

/// Configuration for a [FaunaClient].
///
/// It is recommended to use [FaunaConfig.build] to build a configuration.
class FaunaConfig {
  /// Query API Version to target.
  static const APIVersion = 4;

  /// FaunaDB secret.
  final String secret;

  /// FaunaDB URL scheme (http, https).
  final Scheme scheme;

  /// FaunaDB URL domain.
  final String domain;

  /// FaunaDB URL port.
  final int port;

  /// HTTP request headers.
  final Map<String, String> headers;

  /// Max amount of time to wait for query response.
  final Duration timeout;

  /// Max amount of time to wait for query execution on server.
  ///
  /// If specified, this value is sent as the
  /// `X-Query-Timeout` header in [requestHeaders].
  final Duration? queryTimeout;
  Uri? _baseUrl;
  String? _authToken;
  Map<String, String>? _requestHeaders;

  // ??= operator used to cache computed getters
  // https://flutterigniter.com/dart-getter-cache-computed-properties/

  /// The computed URL to send query requests to.
  /// Built from [scheme], [domain], [port].
  Uri get baseUrl => _baseUrl ??= _buildBaseUrl();

  /// Base64 encoded Basic auth token.
  /// Built from [secret].
  String get authToken => _authToken ??= _buildAuthToken();

  /// Headers that are applied to every request this client makes.
  ///
  /// `X-Fauna-Driver`, `Authorization`, `X-FaunaDB-API-Version`
  /// headers are automatically added in.
  Map<String, String> get requestHeaders =>
      _requestHeaders ??= _buildRequestHeaders();

  Uri _buildBaseUrl() {
    final schemeStr = scheme.toString().split('.')[1];
    return Uri(scheme: schemeStr, host: domain, port: port);
  }

  String _buildAuthToken() {
    final bytes = utf8.encode('$secret:');
    return 'Basic ${base64.encode(bytes)}';
  }

  Map<String, String> _buildRequestHeaders() {
    final reqHeaders = Map<String, String>.from(headers);

    reqHeaders['X-Fauna-Driver'] = 'Dart';

    reqHeaders.putIfAbsent(
      'Authorization',
      () => authToken,
    );

    reqHeaders.putIfAbsent(
      'X-FaunaDB-API-Version',
      () => FaunaConfig.APIVersion.toString(),
    );

    if (queryTimeout != null) {
      reqHeaders.putIfAbsent(
        'X-Query-Timeout',
        () => queryTimeout!.inMilliseconds.toString(),
      );
    }
    return reqHeaders;
  }

  FaunaConfig({
    required this.secret,
    this.scheme = Scheme.HTTPS,
    this.domain = 'db.fauna.com',
    this.port = 443,
    this.headers = const <String, String>{},
    this.timeout = const Duration(minutes: 1),
    this.queryTimeout,
  });

  /// Builds a [FaunaConfig] with sensible defaults. A FaunaDB [secret] must be provided.
  ///
  /// Docs on how to create a secret can be found [here][keys-docs].
  ///
  /// [keys-docs]: https://docs.fauna.com/fauna/current/security/keys.html
  ///
  /// By default, [baseUrl] is https://db.fauna.com:443.
  /// This is the URL the [FaunaClient] will query.
  factory FaunaConfig.build({
    required String secret,
    Scheme scheme = Scheme.HTTPS,
    String domain = 'db.fauna.com',
    int? port,
    Map<String, String> headers = const {},
    Duration timeout = const Duration(minutes: 1),
    Duration? queryTimeout,
  }) {
    return FaunaConfig(
      scheme: scheme,
      domain: domain,
      port: port ?? ((scheme == Scheme.HTTPS) ? 443 : 80),
      secret: secret,
      headers: headers,
      timeout: timeout,
      queryTimeout: queryTimeout,
    );
  }

  /// Returns a [FaunaConfig] created by merging this configuration with [mergeWith].
  @Deprecated(
      'Thanks to null-safety, the reason for merging two configurations has largely been eliminated.')
  FaunaConfig merge(FaunaConfig mergeWith) {
    return FaunaConfig(
      scheme: mergeWith.scheme,
      domain: mergeWith.domain,
      port: mergeWith.port,
      secret: mergeWith.secret,
      headers: mergeWith.headers,
      timeout: mergeWith.timeout,
      queryTimeout: mergeWith.queryTimeout ?? queryTimeout,
    );
  }
}
