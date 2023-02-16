import 'dart:convert';

import 'package:flutter_application_3/data/weather.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  // https://api.openweathermap.org/data/2.5/
  // weather?q=Banjaluka&appid=bb540b76b2fa53c54b0ad4eecfba9f75
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = 'bb540b76b2fa53c54b0ad4eecfba9f75';

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apiKey};
    Uri uri = Uri.https(
      authority,
      path,
      parameters,
    );
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = jsonDecode(result.body);
    Weather weather = Weather.fromJson(data);
    return weather;
  }
}
