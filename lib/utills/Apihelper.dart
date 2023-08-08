import 'dart:convert';
import 'package:http/http.dart' as http;

import '../screens/home/modal/Home_modal.dart';

class ApiHelper {
  static ApiHelper apiHelper = ApiHelper._();

  ApiHelper._();

  Future<List> gitaApi() async {
    Uri uri = Uri.parse(
        "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/?limit=18");

    var response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "8d808dcb09msha62d4c0e8e4b3cep10b91ajsn396f04a699a5",
      "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com",
    });

    var json = jsonDecode(response.body);

    List l1 = json.map((e) => GitaModel.fromJson(e)).toList();

    return l1;
  }
}