abstract class BaseApiNetwork {
  ///this is url mock from beeceptor.com
  static const String _baseUrl = 'https://jscope.free.beeceptor.com';
  final Map<String, String> _headers = {'Content-Type': 'application/json'};
  Map<String, String> get headers => _headers;

  ///user endpoint
  final String loginUrl = '$_baseUrl/api/login';
  final String registerUrl = '$_baseUrl/api/register';
}
