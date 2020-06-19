import 'dart:convert';

import 'package:http/http.dart';

class FaunaDBConfig {
  final String scheme;
  final String domain;
  final int port;
  final String secret;
  String _baseUrl;
  String _authToken;

  /*
  * ??= operator used to cache computed getters
  * https://flutterigniter.com/dart-getter-cache-computed-properties/
  * */
  String get baseUrl => _baseUrl ??= buildBaseUrl();

  String get authToken => _authToken ??= buildAuthToken();

  String buildBaseUrl() {
    return scheme + "://" + domain + ":" + port.toString();
  }

  String buildAuthToken() {
    final bytes = utf8.encode(secret + ":");
    return "Basic " + base64.encode(bytes);
  }

  FaunaDBConfig({this.scheme, this.domain, this.port, this.secret});

  factory FaunaDBConfig.build({
    String scheme = "https",
    String domain = "db.fauna.com",
    int port,
    String secret,
  }) {
    final _isHttp = (scheme == "https");
    final _defaultPort = (_isHttp ? 443 : 80);
    return FaunaDBConfig(
      scheme: scheme,
      domain: domain,
      port: port ?? _defaultPort,
      secret: secret,
    );
  }
}

class FaunaDBClient {
  final _httpClient = Client();
  final FaunaDBConfig config;

  FaunaDBClient(this.config);

  Future<dynamic> query(data) {
    try {
      return _httpClient
          .post(
            config.baseUrl,
            headers: {
              "Authorization": config.authToken,
            },
            body: json.encode(data),
          )
          .then((Response response) => json.decode(response.body));
    } catch (e) {
      print(e);
      return null;
    }
  }

  close() {
    _httpClient.close();
  }
}
