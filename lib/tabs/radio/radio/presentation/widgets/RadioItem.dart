import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import '../../data/models/Radios.dart';
class RadioItem extends StatefulWidget{
  final Radios radio;
  final AudioPlayer player;
  bool isClicked = false;
  bool isMuted = false;
  RadioItem({required this.radio,required this.player});

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {

  @override
  Widget build(BuildContext context) {
    return Container(width: context.w(60),
      margin: context.edgeInsets(horizontal: 3,vertical: 8),
      height: context.h(120),
      child: Stack(
        children: [
         // Positioned(
            //radio.name.length == 3 ?
            //   right: context.w(70),
            //   bottom: context.h(85) ,

               Center(
                 heightFactor: context.h(1),
                   child: Text("${widget.radio.name}",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: context.sp(17)),)),
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
                   "assets/images/volume_cross.png"


                 ,
                height: context.h(25),
                fit: BoxFit.fill,),
             ),
          ),Positioned(
            bottom: context.h(18),
            right: context.w(145),
            child: InkWell(
               onTap:
             togglePlayBack,
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
  void togglePlayBack()async{
    if(widget.isClicked){
 await widget.player.pause();
    }else {
     await widget.player.play(UrlSource(widget.radio.url!));
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
