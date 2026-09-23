import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:islamy_app/tabs/radio/radio/data/models/RecitersResponse.dart';

import '../../../data/models/Reciters.dart';

class RecitersViewModel {
  static Future<List<Reciters>?> getRecitersData()async{
    const String recitersPath = "https://mp3quran.net/api/v3/reciters?language=eng";
    Response recitersResponse= await http.get(Uri.parse(recitersPath));
    final json = jsonDecode(recitersResponse.body);
    final data =RecitersResponse.fromJson(json);
    return data.reciters;

   }
}