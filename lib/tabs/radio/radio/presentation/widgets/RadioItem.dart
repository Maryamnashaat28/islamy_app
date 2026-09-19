import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import '../../data/models/Radios.dart';
class RadioItem extends StatelessWidget{
  final Radios radio;
  final AudioPlayer player;
  RadioItem({required this.radio,required this.player});
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
                   child: Text("${radio.name}",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: context.sp(17)),)),
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
            child: Image.asset("assets/images/Volume_High.png",
              height: context.h(25),
              fit: BoxFit.fill,),
          ),Positioned(
            bottom: context.h(18),
            right: context.w(145),
            child: InkWell(

               onTap: (){
                 print("clicked");
                // AudioPlayer player = AudioPlayer();
               player.play(UrlSource(radio.url!));
               },
              child: Image.asset("assets/images/play_icon.png",
                height: context.h(30),
                width: context.w(25),
                fit: BoxFit.fill,),
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
}