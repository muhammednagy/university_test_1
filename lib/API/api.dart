import 'package:http/http.dart' as http;

Future<http.Response> fetchPhotos(http.Client client) async {
  return client.get('https://csrng.net/csrng/csrng.php?min=1&max=100');
}