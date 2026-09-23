import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/tabs/radio/radio/data/models/Reciters.dart';
import 'package:islamy_app/tabs/radio/radio/presentation/widgets/CommonCard.dart';

class RecitersItem extends StatelessWidget {
  AudioPlayer player;
  Reciters reciter;
  final int index;
   RecitersItem({super.key,required this.reciter,required this.player,required this.index});
  @override
  Widget build(BuildContext context) {
    return CommonCard(name: "${reciter.name}", player: player,
//el radio kan gwaha url 3latol enma hna reciter gwaha moshaf w dah list lkol reciter w
// hia 3obara 3n index wahd bs gwah kza number of sura 3shan kda b3ml moshaf[0] w .server 3shan dah
// attribute gwa el list lkol reciter bykon 3aml kda https://server6.mp3quran.net/akdr/
    //fa talt wahda b2a 3 digits by3bro 3n rkm el sura .mp3
        url: "${reciter.moshaf![0].server}002.mp3");
  }
}
