import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/reusable_components/AppBarImage.dart';

  class SebhaTab extends StatefulWidget {
    static const String routeName = "sebha";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
    double turns = 0.0;
    String tasbih="";

    int counter =0;
    int tasbihIndex =0;

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
  appBar:AppBar(
    title: AppBarImage(),
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
                      tasabehFunction();
                      // setState(() {
                      //   if( counter==0&&tasbihIndex==0) {
                      //     tasbih = "سبحان الله";
                      //     tasbihIndex +=1;
                      //     //counter=0;
                      //   } else if(counter==30&&tasbihIndex==1){
                      //     tasbihIndex+=1;
                      //     tasbih="الحمد لله";
                      //     counter=0;
                      //   }else if(counter==30&&tasbihIndex==2){
                      //     counter=0;
                      //     tasbihIndex+=1;
                      //     tasbih="لا إله إلا الله";
                      //   }else if(counter==30&&tasbihIndex==3) {
                      //     counter=0;
                      //     tasbihIndex += 1;
                      //     tasbih = "الله أكبر";
                      //   }
                      //   else if(counter==30&&tasbihIndex==4){
                      //     print("counter = $counter, index = $tasbihIndex, tasbih = $tasbih");
                      //     tasbihIndex =0;
                      //     counter=0;
                      //     print("counter = $counter, index = $tasbihIndex, tasbih = $tasbih");
                      //   }
                      //   // if(counter>=0&&counter<30){
                      //   //   tasbih1 = tasbih;
                      //   //   counter +=1;
                      //   //   tasbih ="سبحان الله";
                      //   // }else if(counter1>=0&&counter1<30){
                      //   //   counter =1;
                      //   //   counter1 +=1;
                      //   //   tasbih="الحمدلله";
                      //   // }else if(counter2>=0&&counter2<30){
                      //   //   counter =1;
                      //   //   counter2 +=1;
                      //   //   tasbih="لا اله الا الله";
                      //   // }else if(counter3>=0&&counter3<30){
                      //   //   counter =1;
                      //   //   counter3 +=1;
                      //   //   tasbih="الله و اكبر";
                      //   // }else if(counter>=120){
                      //   //   counter =0;
                      //   //   tasbih = "";
                      //   // }
                      //
                      // });
                      // counter++;
                      turns +=0.25;
                    },
                  child: Image.asset("assets/images/SebhaBody1.png",width: context.w(290),height: context.h(320),)
                  ))
              ),
              // Positioned(
              //   bottom: context.h(180),
              //     left: context.w(80),
              //     child:
                  Center(
                      child: Text(tasbih,style: Theme.of(context).textTheme.bodyLarge  ?.copyWith(fontSize: context.sp(29)))
                  ),
              //),
            //  context.verticalSpace(0),
              Positioned(
                  bottom: context.h(100),
                  left: counter >10 ?context.w(130) :context.w(135),
                  child:
                  Center(child: Text(counter.toString(),style: Theme.of(context).textTheme.bodyLarge  ?.copyWith(fontSize: context.sp(29))
                  )
                  ),
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
    void tasabehFunction(){
      setState(() {
        if(counter>=0&&tasbihIndex==0) {
          tasbih = "سبحان الله";
          tasbihIndex +=1;
          //counter=0;
        } else if(counter==30&&tasbihIndex==1){
          tasbihIndex+=1;
          tasbih="الحمد لله";
          counter=0;
        }else if(counter==30&&tasbihIndex==2){
          counter=0;
          tasbihIndex+=1;
          tasbih="لا إله إلا الله";
        }else if(counter==30&&tasbihIndex==3) {
          counter=0;
          tasbihIndex += 1;
          tasbih = "الله أكبر";
        }
        else if(counter==30&&tasbihIndex==4){
          print("counter = $counter, index = $tasbihIndex, tasbih = $tasbih");
          tasbihIndex =0;
          counter=0;
          tasbih = "سبحان الله";
          print("counter = $counter, index = $tasbihIndex, tasbih = $tasbih");
        }
      });
      counter++;
      /*  setState(() {
          counter++;
          if (counter > 30) {
            counter = 1;
            tasbihIndex++;

            if (tasbihIndex > 3) {
              tasbihIndex = 0;
            }
          }
          if (tasbihIndex == 0) {
            tasbih = "سبحان الله";
          } else if (tasbihIndex == 1) {
            tasbih = "الحمد لله";
          } else if (tasbihIndex == 2) {
            tasbih = "لا إله إلا الله";
          } else if (tasbihIndex == 3) {
            tasbih = "الله أكبر";
          }
        });*/
    }
}


//   // if(counter>=0&&counter<30){
//   //   tasbih1 = tasbih;
//   //   counter +=1;
//   //   tasbih ="سبحان الله";
//   // }else if(counter1>=0&&counter1<30){
//   //   counter =1;
//   //   counter1 +=1;
//   //   tasbih="الحمدلله";
//   // }else if(counter2>=0&&counter2<30){
//   //   counter =1;
//   //   counter2 +=1;
//   //   tasbih="لا اله الا الله";
//   // }else if(counter3>=0&&counter3<30){
//   //   counter =1;
//   //   counter3 +=1;
//   //   tasbih="الله و اكبر";
//   // }else if(counter>=120){
//   //   counter =0;
//   //   tasbih = "";
//   // }