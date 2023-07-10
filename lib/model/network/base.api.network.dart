abstract class BaseApiNetwork {
  ///this is url mock from beeceptor.com
  final String _baseUrl = 'https://jscope.free.beeceptor.com';
  final Map<String, String> _headers = {'Content-Type': 'application/json'};

  String get baseUrl => _baseUrl;
  Map<String,String> get headers =>_headers;
}
