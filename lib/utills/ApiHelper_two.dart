import 'dart:convert';
import 'package:http/http.dart' as http;

import '../screens/home/modal/Home_modal.dart';

class ApiHelper {
  static ApiHelper apiHelper = ApiHelper._();

  ApiHelper._();

  Future<List> gitaApi() async {
    Uri uri = Uri.parse(
        "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/1/verses/");

    var response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "86de2a31ffmsh31df2045539a7c0p14e2a2jsn3a8b3881d41d",
      "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com",
    });

    var json = jsonDecode(response.body);

    List l1 = json.map((e) => GitaModel.fromJson(e)).toList();

    return l1;
  }
}