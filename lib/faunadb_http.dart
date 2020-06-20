import 'dart:convert';

import 'package:http/http.dart';

class FaunaDBConfig {
  final String scheme;
  final String domain;
  final int port;
  final String secret;
  final Map<String, String> headers;
  final Duration timeout;
  final Duration queryTimeout;
  String _baseUrl;
  String _authToken;
  Map<String, String> _requestHeaders;

  /*
  * ??= operator used to cache computed getters
  * https://flutterigniter.com/dart-getter-cache-computed-properties/
  * */
  String get baseUrl => _baseUrl ??= buildBaseUrl();

  String get authToken => _authToken ??= buildAuthToken();

  Map<String, String> get requestHeaders =>
      _requestHeaders ??= buildRequestHeaders();

  String buildBaseUrl() {
    return scheme + "://" + domain + ":" + port.toString();
  }

  String buildAuthToken() {
    final bytes = utf8.encode(secret + ":");
    return "Basic " + base64.encode(bytes);
  }

  Map<String, String> buildRequestHeaders() {
    final reqHeaders = Map<String, String>.from(headers);
    reqHeaders.putIfAbsent("Authorization", () => authToken);
    return reqHeaders;
  }

  FaunaDBConfig({
    this.scheme,
    this.domain,
    this.port,
    this.secret,
    this.headers,
    this.timeout,
    this.queryTimeout,
  });

  factory FaunaDBConfig.build({
    String scheme = "https",
    String domain = "db.fauna.com",
    int port,
    String secret,
    Map<String, String> headers = const {},
    Duration timeout = const Duration(minutes: 1),
    Duration queryTimeout,
  }) {
    final isHttp = (scheme == "https");
    final defaultPort = (isHttp ? 443 : 80);
    final config = FaunaDBConfig(
      scheme: scheme,
      domain: domain,
      port: port ?? defaultPort,
      secret: secret,
      headers: headers,
      timeout: timeout,
      queryTimeout: queryTimeout,
    );

    return config;
  }
}

class FaunaDBClient {
  final _httpClient = Client();
  final FaunaDBConfig config;

  FaunaDBClient(this.config);

  Future<dynamic> query(data) {
    return _httpClient
        .post(
          config.baseUrl,
          headers: config.requestHeaders,
          body: json.encode(data),
        )
        .timeout(config.timeout)
        .then((Response response) => json.decode(response.body));
  }

  close() {
    _httpClient.close();
  }
}
