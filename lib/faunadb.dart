import 'dart:convert';

import 'package:http/http.dart';

class FaunaDBConfig {
  final String scheme;
  final String domain;
  final int port;
  final String secret;

  FaunaDBConfig({this.scheme, this.domain, this.port, this.secret});

  String get baseUrl {
    return scheme + "://" + domain + ":" + port.toString();
  }

  String get authToken {
    return "Bearer " + secret;
  }

  factory FaunaDBConfig.create({
    scheme = "https",
    domain,
    port,
    secret,
  }) {
    final _isHttp = (scheme == "https");
    final _defaultPort = (_isHttp ? 443 : 80);
    return FaunaDBConfig(
      scheme: scheme ?? "https",
      domain: domain ?? "db.fauna.com",
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
