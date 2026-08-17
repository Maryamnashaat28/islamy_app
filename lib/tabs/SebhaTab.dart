// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
//
// class SebhaTab extends StatelessWidget {
//   static const String routeName = "sebha";
//   const SebhaTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // width: double.maxFinite,
//       // height: double.maxFinite,
//       decoration: BoxDecoration(
//         image: DecorationImage(image: AssetImage("assets/images/background_sebha.png"),fit: BoxFit.cover,
//         )),
//
//       child: Scaffold(
//
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

  class SebhaTab extends StatefulWidget {
    static const String routeName = "sebha";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
    double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_sebhatab.png"),
          fit: BoxFit.fill,
        ),
      ),
child: Scaffold(
  appBar: AppBar(
    title:  Image.asset(height: context.h(130),
        width: context.w(250),
        "assets/images/img_header.png"),
  ),
  body: Padding(
    padding:context.edgeInsets(all: 10),
    child: Column(
      children: [
        Center(
         heightFactor: context.h(0.8),
          child: Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",style: Theme.of(context).textTheme.bodyLarge
            ?.copyWith(fontSize: context.sp(29)),

            ),
        ),
        context.verticalSpace(10),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //       Image.asset("assets/images/SebhaTail.png",width: context.w(120),),
        //         Image.asset("assets/images/SebhaBody1.png",width: context.w(290),height: context.h(290),)
        //
        //
        //   ],
        // )
        SizedBox(
          height: context.h(380),
          width: context.w(300),
          child: Stack(
            children: [
              Positioned(right: context.w(100),
                  top: context.h(3),
                  child
                  : Image.asset("assets/images/SebhaTail.png",width: context.w(105),)),
              Positioned(
                bottom: context.h(0.1),
                  child: AnimatedRotation(
                    
                      //turns: AlwaysStoppedAnimation(15/360),

                  turns: turns, duration:Duration(milliseconds: 100),
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        turns +=0.25;
                      });
                    },

                  child: Image.asset("assets/images/SebhaBody1.png",width: context.w(290),height: context.h(320),)
                  ))

              ),
            ],
          ),
        )
      ],
    ),
  ),

),
    );
  }
}

