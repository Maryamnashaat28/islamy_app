import 'package:flutter/material.dart';


class SettingsProvider extends ChangeNotifier{
   String language="en";
   changeLanguage(String newLanguage){
     if(language==newLanguage)return;
     language = newLanguage;
     notifyListeners();
   }
}