import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:university_test_1/models/API.dart';

Future<RandomNumber> fetchRandomNumber() async {
  final response = await http.get('https://csrng.net/csrng/csrng.php?min=1&max=1000');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final jsonresponse = json.decode(response.body);
    final random = RandomNumber.fromJson(jsonresponse[0]);
    return random;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load random number');
  }

}