/* -------------------------------------------------------------------------- */
/*                                  Endpoints                                 */
/* -------------------------------------------------------------------------- */
abstract class Endpoints {
/* -------------------------------------------------------------------------- */
  Duration _receiveTimeout = const Duration(milliseconds: 15000);
/* -------------------------------------------------------------------------- */
  Duration _connectionTimeout = const Duration(milliseconds: 30000);
/* -------------------------------------------------------------------------- */
  final String baseUrl;
/* -------------------------------------------------------------------------- */
  final String apiVersion;
/* -------------------------------------------------------------------------- */
  Duration get connectionTimeout => _connectionTimeout;
/* -------------------------------------------------------------------------- */
  Duration get receiveTimeout => _receiveTimeout;
/* -------------------------------------------------------------------------- */
  set connectionTimeout(Duration duration) {
    assert(!duration.isNegative);
    _connectionTimeout = duration;
  }

/* -------------------------------------------------------------------------- */
  set receiveTimeout(Duration duration) {
    assert(!duration.isNegative);
    _receiveTimeout = duration;
  }

/* -------------------------------------------------------------------------- */
  Endpoints({
    required this.baseUrl,
    required this.apiVersion,
    Duration? receiveTimeout,
    Duration? connectionTimeout,
  });

/* -------------------------------------------------------------------------- */
  String buildEndpoint(String endpoint) {
    return '$baseUrl/$endpoint';
  }

/* -------------------------------------------------------------------------- */
  String buildApiEndpoint(String endpoint) {
    return buildEndpoint('$apiVersion/$endpoint');
  }
/* -------------------------------------------------------------------------- */
}
