import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:islamy_app/tabs/radio/radio/data/models/RadioResponse.dart';

import '../../../data/models/Radios.dart';
class RadioViewModel {
  //di el function eli btrg3 el response kolo
  Future<List<Radios>?> getRadioData()async{
    const String radioPath = "https://mp3quran.net/api/v3/radios?language=en";
  Response response= await http.get(Uri.parse(radioPath));
 final  json = jsonDecode(response.body);
 final data=RadioResponse.fromJson(json);
 return data.radios ;
  }
}
