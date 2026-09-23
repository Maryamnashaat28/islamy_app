import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
class CommonCard extends StatefulWidget {
CommonCard({super.key,required this.name,required this.player,required this.url});
String name;
bool isClicked = false;
bool isMuted = false;
final AudioPlayer player;
String url;

  @override
  State<CommonCard> createState() => _CommonCardState();
}
class _CommonCardState extends State<CommonCard> {
  @override
  Widget build(BuildContext context) {
    return Container(width: context.w(60),
      margin: context.edgeInsets(horizontal: 3,vertical: 8),
      height: context.h(120),
      child: Stack(
        children: [
          Center(
              heightFactor: context.h(1),
              child: Text(widget.name,style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: context.sp(17)),)),
          // ),
          Positioned(
            bottom: context.h(2),
            child: Image.asset("assets/images/radio_mosque.png",width:
            context.w(325),
              height: context.h(90),
              fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: context.h(18),
            right: context.w(105),
            child:
            InkWell(
              onTap: toggleMuteUnMute,
              child: Image.asset(widget.isMuted == false ?
              "assets/images/Volume_High.png":
              "assets/images/volume_cross.png",
                height: context.h(25),
                fit: BoxFit.fill,),
            ),
          ),Positioned(
            bottom: context.h(18),
            right: context.w(145),
            child: InkWell(
              onTap:(){
                togglePlayBack(widget.url);
                },
              child:
              Image.asset(widget.isClicked == false?"assets/images/play_icon.png":
              "assets/images/pause.png"
                ,
                height: context.h(30),
                width: context.w(25),
                fit: BoxFit.fill,)
              ,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadiusGeometry.circular(context.r(20)),

      ),

    );
  }
void togglePlayBack(String url)async{
  if(widget.isClicked){
    await widget.player.pause();
  }else {
    await widget.player.play(UrlSource(url));

  }
  setState(() {
    widget.isClicked =  !widget.isClicked;
  });
}
void toggleMuteUnMute()async{
  if(widget.isMuted){
    await widget.player.setVolume(1.0);

  }else{
    await widget.player.setVolume(0.0);
  }
  setState(() {
    widget.isMuted = !widget.isMuted;
  });
}
}
