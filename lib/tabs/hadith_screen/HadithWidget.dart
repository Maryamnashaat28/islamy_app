import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
class HadithWidget extends StatelessWidget {
  String realIndexInt;
   HadithWidget({super.key,required this.realIndexInt});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:context.edgeInsets(top: 10),
      margin: context.edgeInsets(top: 30,bottom: 10),
      width: context.w(210),
      //height: context.h(150),
      child:Stack(
        children: [
          Positioned(
              right:context.w(7),
              child: Image.asset(fit: BoxFit.cover,
                  "assets/images/right_corner_hadith_background.png")),
          Positioned(
              left:context.w(7),
              child: Image.asset(fit: BoxFit.cover,
                  "assets/images/left_corner_hadith_background.png")),
          //Center(child: Text("$realIndex",)),
          Center(child: Text(realIndexInt)),
          Positioned(
              bottom:context.h(0.1),
              child: Image.asset("assets/images/mosque_card.png",
                  width: context.w(200),
                  fit: BoxFit.fill
              )),
          Center(

              child: Image.asset(
                  "assets/images/hadith_card_background.png"))
        ],
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(context.r(20)))
      ),
    );
  }
}
